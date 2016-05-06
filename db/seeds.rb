# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##########################################
User.destroy_all
Article.destroy_all
Revision.destroy_all
Category.destroy_all
Categorization.destroy_all
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
"Alpha-Bits – Post Cereals",
"Corn Pops",
"Cocoa Puffs",
"Apple Jacks – Kellogg's ",
"Apple DJ Crashers – Kellogg's (2007)",
"Apple Jacks Gliders – Kellogg's (2009–2010)",
"Apple Jacks Apple Clones – Kellogg",
"Apple Jacks Criss Crossed – Kellogg'",
"CinnaScary Apple Jacks – Kellogg's (2005)",
"Apple Jacks Double Vision – Kellogg's (2006)",
"Apple Raisin Crisp – Kellogg's",
"Apple Zings – Malt-O-Meal Company",
"Apple Zingaroos Kellogg's",
"Banana Nut Cheerios (2008 – present)",
"Berry Burst Cheerios (2003 – present)",
"Berry Burst Cheerios – Strawberr",
"Berry Burst Cheerios – Triple Berr",
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
"Cookie Crisp Brownie (2013-)",
"Double Chocolate Cookie Crisp (2006-2008)",
"Oatmeal Cookie Crisp (1978-1980)",
"Peanut Butter Cookie Crisp (2005-2007)",
"Cookie Crisp Sprinkles (2009-2012)",
"Vanilla Cookie Crisp (1978-Mid 1980's)",
"Wackies – General Mills (1965–1967)",
"Waffelos – Ralston ",
"Waffle Crisp – Post Cereals (1996 – present)",
"Weet-Bix – Sanitarium Health Food Company",
"Weetabix – Weetabix Limited ",
"Weetabix Minis – Weetabix Limited",
"Weetos – Weetabix Limited",
"Wheat Honeys Nabisco",
"Wheat Stax – General Mills ",
"Fruity Pebbles",
"Wheaties – General Mills  ",
"Wild Animal Crunch"
]

i = 1
 cereals.each do |cereal|
  Article.create(title: cereal, user_id: i, img_src: "http://www.seriouseats.com/images/2011/08/20110829-mini-cereal-boxes-10.jpg")
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
i = 1
100.times do
  Categorization.create(article_id: i, category_id: c)
  c += 1
  if c > 10
    c = 3
  end
  i+=1
  if i>50
    i=1
  end
end
############################################
Article.find(1).update(img_src:"http://thepoptopshop.com/osc/images/AddamsFamilyCereal.JPG")
Article.find(2).update(img_src: "http://goodtoknow.media.ipcdigital.co.uk/111/00000a186/d3ca_orh100000w614/Kelloggs-All-Bran---500g.jpg")
Article.find(3).update(img_src: "https://s-media-cache-ak0.pinimg.com/236x/21/d2/f2/21d2f255ffedc36ab943d4336ba070ae.jpg")
Article.find(4).update(img_src:"http://www.couponersunited.com/wp-content/uploads/2014/10/81pMc5O0uHL._SL1500_.jpg")
Article.find(5).update(img_src:"http://ecx.images-amazon.com/images/I/919a90D8QHL._SL1500_.jpg")
Article.find(6).update(img_src:"https://upload.wikimedia.org/wikipedia/en/c/cf/CocoaPuffs.jpg")
