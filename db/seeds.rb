# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##########################################

User.create(name: "Duke", email: "duke@duke.com", password:"password" )
User.create(name: "Erica", email: "e@e.com", password:"password" )
User.create(name: "Rocky", email: "r@r.com.com", password:"password" )
User.create(name: "John", email: "j@j.com.com", password:"password" )
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
  Article.create(title: cereal, user_id: i)
  i +=1
  if i>5
    i=1
  end
end
###############################################
i = 1
50.times do
  Revision.create(user_id: 1, article_id: i, body: "<p>NOOOOOOOOOM.noooooooom.Noooooooooom.nOOOOOOOm.</p>")
  i += 1
  if i >50
    i=1
  end
end
#############################################

categories = ["Crunchy", "Tasty", "Hot", "Cold"]
categories.each do |cat|
  Category.create(name: cat)
end
##############################################
c = 1
51.times do |i|
  Categorization.create(article_id: i, category_id: c)
  c += 1
  if c > 4
    c = 1
  end
end

