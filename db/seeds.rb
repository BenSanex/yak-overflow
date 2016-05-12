require 'faker'

Question.delete_all
User.delete_all

questions = {"Are domesticated Yaks smaller than wild ones?" => "I'm not sure which are smaller, can someone help me?", "What do I feed my yak if it is getting sick?" => "I tried feeding it a big mac, but it didn't want it.", "ok, wtf is a tuber?" => "I read it on some website, and apparantly this is what they eat?", "My yak just ate all my weed" => "What should I do to help?", "My friend over in Tibet has a yak, and so does his brother" => "How can I ship one to Atlanta? I really want one, but my mom says its too hot here for one", "Holy Sh*t, I just saw this yak jump on youtube!" => "Can I trust this source, or was this thing photoshopped?", "Can a yak jump as high as Michael Jordan?" => "This is definitely not Michael Jordan asking, btw"}

questions.each do |title, body|
Question.create!( :title      => title,
                  :body       => body,
                  :asker_id   => rand(1..8))
end




User.create!( :username => 'peacelovenyaks',
              :profile_pic  => Faker::Avatar.image,
              :email      => Faker::Internet.email,
              :hashed_password   => 'password' )
User.create!( :username => 'ilive4yaks',
              :profile_pic  => Faker::Avatar.image,
              :email      => Faker::Internet.email,
              :hashed_password   => 'password' )
User.create!( :username => 'yakluver',
              :profile_pic  => Faker::Avatar.image,
              :email      => Faker::Internet.email,
              :hashed_password   => 'password' )
User.create!( :username => 'yakqueen',
              :profile_pic  => Faker::Avatar.image,
              :email      => Faker::Internet.email,
              :hashed_password   => 'password' )
User.create!( :username => 'YakGirl15',
              :profile_pic  => Faker::Avatar.image,
              :email      => Faker::Internet.email,
              :hashed_password   => 'password' )
User.create!( :username => 'BigSherpa123',
              :profile_pic  => Faker::Avatar.image,
              :email      => Faker::Internet.email,
              :hashed_password   => 'password' )
User.create!( :username => 'KingOfTibet',
              :profile_pic  => Faker::Avatar.image,
              :email      => Faker::Internet.email,
              :hashed_password   => 'password' )
User.create!( :username => 'YakNicholson',
              :profile_pic  => Faker::Avatar.image,
              :email      => Faker::Internet.email,
              :hashed_password   => 'password' )
