questions = {"Are domesticated Yaks smaller than wild ones?" => "I'm not sure which are smaller, can someone help me?", "What do I feed my yak if it is getting sick?" => "I tried feeding it a big mac, but it didn't want it.", "ok, wtf is a tuber?" => "I read it on some website, and apparantly this is what they eat?", "My yak just ate all my weed" => "What should I do to help?", "My friend over in Tibet has a yak, and so does his brother, how can I ship one to Atlanta" => "I really want one, but my mom says its too hot here in Atlanta for one"}

questions.each do |title, body|
Question.create!( :title      => title,
                  :body       => body,
                  :asker_id   => rand(0..100))
end
