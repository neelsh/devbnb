# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#delete users.all
User.destroy_all


names = ["Jimmy Page", "Johann Sebastian Bach", "Lady Gaga", "Elton John", "Elvis Presley",
        "Ella Fiztgerald", "Jimi Hendrix", "Eva Cassidy", "Joe Walsh", "Neel Shah",
        "Noel Gallagher", "c"]

picture_urls = [
                "http://1krecordings.com/wp-content/uploads/2014/12/JP.jpg",
                "http://www.bach-cantatas.com/thefaceofbach/Pic-FOB/1760-08-wdheq-if-300.jpg",
                "https://s-media-cache-ak0.pinimg.com/564x/52/be/c2/52bec256cb79dcbff5073b9f3096a252.jpg",
                "https://news.artnet.com/app/news-upload/2015/05/Elton-John-007-256x256.jpg",
                "http://cdn.images.express.co.uk/img/dynamic/10/285x214/16550_1.jpg",
                "https://c-sf.smule.com/sf/s25/arr/88/ed/0e569a9a-572f-45cb-8cb9-2340192b693b.jpg",
                "https://pbs.twimg.com/profile_images/687309377368383490/4LBGZWZk.jpg",
                "https://c-sf.smule.com/sf/s30/arr/3c/a0/cc0df2ac-fb9c-47a2-83ad-6757e85fc5ec.jpg",
                "https://ichef.bbci.co.uk/images/ic/256x256/p01br5nx.jpg",
                "https://s-media-cache-ak0.pinimg.com/avatars/dhruveshpatel16_1489810931_280.jpg",
                "https://pbs.twimg.com/profile_images/590996478426009601/TqNQAXPG.jpg",
                "http://mostfamousperson.net/ChristinaAguilera.png"
               ]


cities = ["London", "Paris", "Amsterdam", "Cologne", "Berlin", "Pyong Yang", "Bejing", "Nanjing",
          "New York", "Denver", "Boulder", "Rome"]

12.times do |i|
  u = User.create!(
    email: "user_#{i}@gmail.com",
    password: "password",
    city: "#{cities[i]}",
    name: "#{names[i]}",
    facebook_picture_url: "#{picture_urls[i]}"
  )

  Service.create!(
    user_id: u.id,
    title: "Front End",
    rate: "350"
  )

  Service.create!(
    user_id: u.id,
    title: "Back End",
    rate: "400"
  )

end


# 7.times do |i|
#   Contract.create!(
#     user: User.find(rand()),
#     service: Service.find()
#   )
# end
