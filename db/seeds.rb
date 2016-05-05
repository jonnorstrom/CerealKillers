# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##########################################
require 'faker'
User.create(name: "Duke", email: "d@d.com", password:"password", is_admin: true)
User.create(name: "Erica", email: "e@e.com", password:"password" )
User.create(name: "Rocky", email: "r@r.com.com", password:"password" )
User.create(name: "Jon", email: "j@j.com.com", password:"password" )
User.create(name: "Liz", email: "l@l.com.com", password:"password" )
User.create(name: "Sean", email: "s@s.com.com", password:"password" )

cereals =
[
"Addams Family Cereal – Ralston (1994)",
"All-Bran – Kellogg's (1916 – present)",
"Almond Delight – Ralston",
"Alpen – Weetabix Limited",
"Alpha-Bits – Post Cereals (1958 – present)",
"Apple Jacks – Kellogg's (1965 – present)",
"Apple DJ Crashers – Kellogg's (2007)",
"Apple Jacks Gliders – Kellogg's (2009–2010)",
"Apple Jacks Apple Clones – Kellogg's (2010 – present)",
"Apple Jacks Criss Crossed – Kellogg's (2008-late 2009)",
"CinnaScary Apple Jacks – Kellogg's (2005)",
"Apple Jacks Double Vision – Kellogg's (2006)",
"Apple Raisin Crisp – Kellogg's",
"Apple Zings – Malt-O-Meal Company",
"Apple Zingaroos Kellogg's",
"Banana Nut Cheerios (2008 – present)",
"Berry Burst Cheerios (2003 – present)",
"Berry Burst Cheerios – Strawberry (2003–?)",
"Berry Burst Cheerios – Triple Berry (2003 – present)",
"Cinnamon Cheerios (2004 - present)",
"Cinnamon Burst Cheerios (2011–present)",
"Cinnamon Nut Cheerios (1980-present)",
"Chocolate Cheerios- (2010 – present)",
"Frosted Cheerios (1995 – present)",
"Fruity Cheerios (2006 – present)",
"Honey Nut Cheerios (1979 – present)",
"Millenios (Cheerios) (1999–2000)",
"MultiGrain Cheerios (1991 – present)",
"Cookie Crisp cereal",
"Cookie Crisp (1977 – present)",
"Cookie Crisp Brownie (2013-) (available in the U.K)",
"Double Chocolate Cookie Crisp (2006-2008)",
"Oatmeal Cookie Crisp (1978-1980)",
"Peanut Butter Cookie Crisp (2005-2007)",
"Cookie Crisp Sprinkles (2009-2012)",
"Vanilla Cookie Crisp (1978-Mid 1980's)",
"Wackies – General Mills (1965–1967)",
"Waffelos – Ralston (Late 1970s-early 1980s)",
"Waffle Crisp – Post Cereals (1996 – present) (sporadic availability)",
"Weet-Bix – Sanitarium Health Food Company",
"Weetabix – Weetabix Limited – (generic equivalent branded as 'whole-wheat biscuits' or similar)",
"Weetabix Minis – Weetabix Limited",
"Weetos – Weetabix Limited",
"Wheat Honeys Nabisco",
"Wheat Stax – General Mills – (1966)[10]",
"Wheatena",
"Wheaties – General Mills – 'The Breakfast of Champions' – (1924 – present)",
"Wild Animal Crunch – Kellogg's (2008–2009)",
"Yog-Active",
"Zany Fruits - Western Family"
]

i = 1
 cereals.each do |cereal|
  Article.create(title: cereal, user_id: i, img_src: Faker::Placeholdit.image)
  i +=1
  if i>5
    i=1
  end
end
###############################################
i = 1
cereals.length.times do
  Revision.create(user_id: 1, article_id: i, body:
  '<p><a name="history"></a></p>

  <p><u><span style="font-size:36px;"><b>History &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</b></span></u></p>

  <p style="margin-left: 40px;"><span style="font-size:14px;"><img alt="" src="http://www.quakeroats.com/images/default-source/products/life-regular-50th-detail-sflbec4155418cb46e438643ff2300547e50" style="width: 139px; height: 100px; float: right;" /><strong>This is where you can post about the history of your cereal where it came from, how it came about and things of that nature. The following is filler text. Delete this and fill in the rest...</strong><br />' + Faker::Hipster.paragraphs(1, true)[0] + '</span></p>

  <p><a name="about"></a></p>

  <p><b style="font-size: 36px; text-decoration: underline;">About&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</b></p>

  <p style="margin-left: 40px;"><span style="font-size:14px;"><strong>This is where you can post about&nbsp;your cereal where it came from, how it tastes and things of that nature. The following is filler text..</strong>.<br />' + Faker::Hipster.paragraphs(1, true)[0] + '</span></p>

  <p><a name="ingredients"></a></p>

  <p><b style="font-size: 36px; text-decoration: underline;">Ingredients&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</b></p>

  <p style="margin-left: 40px;"><span style="font-size:14px;"><strong>This is where you can post about&nbsp;your cereal its ingredients&nbsp;and things of that nature. The following is filler text..</strong>' + Faker::Hipster.paragraphs(1, true)[0] + '</span></p>

  <p>&nbsp;</p>

  <p>&nbsp;</p>'

  )
  i += 1
  if i > cereals.count
    i=1
  end
end
#############################################

categories = ["Crunchy", "Tasty", "Hot", "Cold", "Soggy", "Stale", "Delicious", "Gluten Free", "Flakey", "Sugary"]
categories.each do |cat|
  Category.create(name: cat)
end
##############################################
c = 1
51.times do |i|
  Categorization.create(article_id: i, category_id: c)
  c += 1
  if c > 10
    c = 1
  end
end
