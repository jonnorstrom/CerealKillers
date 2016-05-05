# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  User.create(id: 1, email: "admin@admin.com", username: "dukeg", password:"password")
  User.create(id: 2, email: "e@e.com", username:"ello21", password: "password")
##########################################
cereals =
[
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

 cereals.each do |cereal|
  Article.create(title: cereal, user_id: 1)
end
###############################################
i = 1
20.times do
  Revision.create(user_id: 2, article_id: i, body: "<p>NOOOOOOOOOM.noooooooom.Noooooooooom.nOOOOOOOm.</p>")
  i += 1
  if i >14
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
14.times do |i|
  Categorization.create(article_id: i, category_id: c)
  c += 1
  if c > 4
    c = 1
  end
end

