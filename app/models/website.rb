class Website < ActiveRecord::Base

  has_one :keyword

  def get_stuff 
  	person = get_keywords_in_category('people').sample
  	item = get_keywords_in_category('objects').sample
	picture = get_picture_for_keyword(person);

	self.title = "Did " + person.name + " have sex with a " + item.name + "?"
	self.description = "Has the " + person.synonym + " had sexual relations with " + item.synonym + "?" + " What this damning report exposes could shock you!"
	self.picture_id = picture.id
	self.keyword_id = item.id
	self.text = "No. No he didn't. The report was actually unrelated to " + item.name
  end

  def get_keywords_in_category(category_name)
  	return Category.where(:name => category_name).map{|category| category.keywords}.flatten
  end

  def get_picture_for_keyword(keyword) 
  	pictures = keyword.pictures
  	return !pictures.blank? ? pictures.sample : Picture.find(3)
  end


end
