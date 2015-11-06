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

City.create(city_name: 'Los Angeles', city_desc: 'Los Angeles is a sprawling Southern California city famed as the center of the nation’s film and television industry.')
City.create(city_name:'London', city_desc:'London, England’s capital, set on the River Thames, is a 21st-century city with history stretching back to Roman times. ' )
City.create(city_name:'Paris', city_desc:'Paris, France’s capital, is a major European city and a global center for art, fashion, gastronomy and culture.' )

@note1 = Note.new(city_name:'Paris',title:'Ratatouille',content:'Italian food is so good!')
@note1.categories << Category.find_by_name('Delicious food')
@note1.save

@note2 = Note.new(city_name:'Paris',title:'Magnificient Eiffel Tower',content:'Such a picturesque place')
@note2.categories << Category.find_by_name('Hiking')
@note2.save

@note3 = Note.new(city_name:'Paris',title:'Beautiful Scenery',content:'I really enjoyed visiting the place')
@note3.categories << Category.find_by_name('Hiking')
@note3.save

@note4 = Note.new(city_name:'Los Angeles',title:'Santa Monica',content:'The beach pier is awesome')
@note4.categories << Category.find_by_name('Beaches')
@note4.categories << Category.find_by_name('Amusement parks')
@note4.save

@note5 = Note.new(city_name:'Los Angeles',title:'Hollywood',content:'Walk of fame!!')
@note5.categories << Category.find_by_name('Amusement parks')
@note5.categories << Category.find_by_name('Delicious food')
@note5.save

@note6 = Note.new(city_name:'Los Angeles',title:'Beverly Hills',content:'Such a grand place')
@note6.categories << Category.find_by_name('Delicious food')
@note6.save


Blog.create(city_name: 'Los Angeles', title:'Long Weekend @ LA',body: 'The United States’ second biggest city has got it all. Beaches, boulevards, baseball and Beverly hills.',
            link: 'http://www.urbantravelblog.com/guide/los-angeles/', picture: File.open(File.join(Rails.root, '/app/assets/images/LosAngelesBlog1.jpg')), author: 'Vince Robbins');

Blog.create(city_name: 'Paris', title:'The Hip Paris Blog',body: 'Le Procope: A Paris Dining Experience with a Side of French History.',
            link: 'http://hipparis.com/2015/10/13/le-procope-a-paris-dining-experience-with-a-side-of-french-history/', picture: File.open(File.join(Rails.root, '/app/assets/images/HipParis.jpg')), author: 'Emily Dillin');