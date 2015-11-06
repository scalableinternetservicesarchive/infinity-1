# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: 'Beaches')
Category.create(name: 'Adventure Sports')
Category.create(name: 'Hiking')
Category.create(name: 'Delicious food')
Category.create(name: 'Amusement parks')
Category.create(name: 'Trekking')


City.create(city_name: 'Los Angeles', city_desc: 'New city')


Blog.create(city_name: 'Los Angeles', title:'Long Weekend @ LA',body: 'The United States’ second biggest city has got it all. Beaches, boulevards, baseball and Beverly hills.',
            link: 'http://www.urbantravelblog.com/guide/los-angeles/', picture: File.open(File.join(Rails.root, '/app/assets/images/LosAngelesBlog1.jpg')), author: 'Vince Robbins');

Blog.create(city_name: 'Paris', title:'The Hip Paris Blog',body: 'Le Procope: A Paris Dining Experience with a Side of French History.',
            link: 'http://hipparis.com/2015/10/13/le-procope-a-paris-dining-experience-with-a-side-of-french-history/', picture: File.open(File.join(Rails.root, '/app/assets/images/HipParis.jpg')), author: 'Emily Dillin');