class Rules


  def Rules.sex_with_an_object(website) 
        
    person = website.get_keywords_in_category('people').sample
    item = website.get_keywords_in_category('objects').sample
    picture = website.get_picture_for_keyword(person, item);

    website.title = "Did " + person.name + " have sex with a " + item.name + "?"
    website.description = "Has the " + person.synonym + " had sexual relations with " + item.synonym + "?" + " What this damning report exposes could shock you!"
    website.picture_id = picture.id
    website.keyword_id = item.id
    website.text = "No. No they didn't. The report was actually unrelated to " + item.name

    # return "sex " + website.title
  end

  def Rules.new_rule(website) 
    website.title = "farts"
    website.description = "fart"
    website.picture_id = 1
    website.keyword_id = 1
    website.text = "farts farts farts"
  end

  def Rules.new_rule2(website) 
    sex_with_an_object(website)
  end


end