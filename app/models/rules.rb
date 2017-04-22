class Rules


  def Rules.sex_with_an_object(website) 
        
    person = website.get_keywords_in_category('people').sample
    item = website.get_keywords_in_category('objects').sample
    picture = website.get_picture_for_keyword([person, item]);

    website.title = "Did " + person.name + " have sex with a " + item.name + "?"
    website.description = "Has the " + person.synonym + " had sexual relations with " + item.synonym + "?" + " What this damning report exposes could shock you!"
    website.picture_id = picture.id
    website.keyword_id = item.id
    website.text = "No. No they didn't. The report was actually unrelated to " + item.name

    # return "sex " + website.title
  end


  def Rules.religion(website) 

    person = website.get_keywords_in_category('people').sample
    religion = website.get_keywords_in_category('religions').sample
    religion2 = website.get_keywords_in_category('religions').select{|r| r.id != religion.id}.sample
    picture = website.get_picture_for_keyword([person, religion]);

    website.title = "Has " + person.name + " got plans to ban " + religion.name + "?"
    website.description = "Does the " + person.synonym + " want to eradicate the " + religion.synonym + " in favour of " + religion2.name + "?"
    website.picture_id = picture.id
    website.keyword_id = religion.id
    website.text = "No. It's utter nonsense."
  end  

  def Rules.fart_smeller(website) 

    person = website.get_keywords_in_category('people').sample
    picture = website.get_picture_for_keyword([person]);

    website.title = "Is " + person.name + " a smart feller, or a fart smeller?"
    website.description = "What we found out will SHOCK you!"
    website.picture_id = picture.id
    website.keyword_id = person.id
    website.text = "We have evidence of neither."
  end

  def Rules.new_rule2(website) 
    sex_with_an_object(website)
  end


end