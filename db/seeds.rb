# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
c1 = Category.create(name: 'Beaches')
c2 = Category.create(name: 'Adventure Sports')
c3 = Category.create(name: 'Hiking')
c4 = Category.create(name: 'Delicious food')
c5 = Category.create(name: 'Amusement parks')
c6 = Category.create(name: 'Trekking')

for i in 1...2000
Category.create(name: 'Beaches')
Category.create(name: 'Adventure Sports')
Category.create(name: 'Hiking')
Category.create(name: 'Delicious food')
Category.create(name: 'Amusement parks')
Category.create(name: 'Trekking')
end
categories_arr=[c1,c2,c3,c4,c5,c6]


City.create(city_name: 'Los Angeles', city_desc: 'Los Angeles is a sprawling Southern California city famed as the center of the nation’s film and television industry.')
City.create(city_name:'London', city_desc:'London, England’s capital, set on the River Thames, is a 21st-century city with history stretching back to Roman times. ' )
City.create(city_name:'Paris', city_desc:'Paris, France’s capital, is a major European city and a global center for art, fashion, gastronomy and culture.' )

Blog.create(city_name: 'Los Angeles', title:'Long Weekend @ LA',body: 'The United States’ second biggest city has got it all. Beaches, boulevards, baseball and Beverly hills.',
            link: 'http://www.urbantravelblog.com/guide/los-angeles/', picture: File.open(File.join(Rails.root, '/app/assets/images/LosAngelesBlog1.jpg')), author: 'Vince Robbins');

Blog.create(city_name: 'Paris', title:'The Hip Paris Blog',body: 'Le Procope: A Paris Dining Experience with a Side of French History.',
            link: 'http://hipparis.com/2015/10/13/le-procope-a-paris-dining-experience-with-a-side-of-french-history/', picture: File.open(File.join(Rails.root, '/app/assets/images/HipParis.jpg')), author: 'Emily Dillin');




city_arr= ['Los Angeles','London','Paris']

c1=0
c2=0


user=User.create(email:'calvin2@gmail.com',first_name:'calvin',last_name:'hobbes',date_of_birth:'2015-11-30 08:59:38',is_female:'0' )
user.password = 'mauli1991'
user.save


for i in 1...50000

  tempnote  = Note.create(city_name:city_arr[c1],title:'Magnificient Eiffel Tower',content:'Such a picturesque place')
  tempnote.categories << categories_arr[c2]
  tempblog = Blog.create(city_name: city_arr[i], title:'Long Weekend'<<i,body: 'The United States’ second biggest cit',
                         link: 'http://www.urbantravelblog.com/guide/los-angeles/', picture: File.open(File.join(Rails.root, '/app/assets/images/LosAngelesBlog1.jpg')), author: 'Vince Robbins');
  tempblog.categories << categories_arr[c2]
  c1=(c1+1)%city_arr.length
  c2=(c2+1)%categories_arr.length

  BlogComment.create(body:'What a blog!',blog_id:i,user_id:user.id)
  Comment.create(body:'My comment ',note_id:i,user_id:user.id)

end
