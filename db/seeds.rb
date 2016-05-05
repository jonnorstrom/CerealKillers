# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


admin = User.find_or_create_by(name: 'Big Dog', email: 'bigdog@email.com', encrypted_password: 'password', is_admin: true)
user =  User.find_or_create_by(name: 'Little Dog', email: 'littledog@email.com', encrypted_password: 'password', is_admin: false)
