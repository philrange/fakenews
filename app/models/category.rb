class Category < ActiveRecord::Base

	has_many :children, class_name: 'Category', foreign_key: 'parent_id'
	belongs_to :parent, class_name: 'Category', foreign_key: 'parent_id'

	has_and_belongs_to_many :keywords

  def get_children
  	return Category.where(:parent_id => id)
  end

  def get_parents
  	parents = []
  		
  	if parent_id != nil 
  		parents.push(parent.name)
  		parents.push(*parent.get_parents)
  	end

  	return parents
  end

  def get_categories 
  	return get_parents.push(name)
  end


end
