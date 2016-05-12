def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end

def logged_in?
  session[:user_id] != nil
end

def authenticate!
  redirect '/login' unless logged_in?
end

def random_yak
%w(http://s2.quickmeme.com/img/26/264c794a6efed960a14d6d3f15873565ab30d0d241c865bf17fcfcc2a5de3efc.jpg

http://s2.quickmeme.com/img/d2/d255a927dd2673c94a3c3b839f77315060a0fdcd1d097f1d31ca5b099104a6da.jpg

http://troll.me/images/when-in-doubt-yak/when-in-doubt-yak-it-out-thumb.jpg

http://assets.diylol.com/hfs/29b/5f0/c99/resized/yak-meme-generator-it-s-ok-he-s-just-yaking-it-up-16ecd8.jpg

http://s.quickmeme.com/img/ea/ea409583c545fc4fb64d9892045f73b5390854a62482782b1f098d92b1a245d5.jpg

http://s2.quickmeme.com/img/ac/ac56ce41b6ca9b72fd972b5e35226978f3eda91b69f15aca445d16d0aca1aa0a.jpg

http://i.imgur.com/RcfI7P9.png

http://s2.quickmeme.com/img/56/565ff8be6f4e4566321acdb4b5f464b3aeb7121f7e69cd68ee7d87482598ad99.jpg

http://s.quickmeme.com/img/91/9171e3b72d7c8c91cd39b208a57bc037afc65e22498ca05a8b052ded69c56eb0.jpg

http://troll.me/images/customer-service-croc/yakyakyakyak-thumb.jpg

https://d.gr-assets.com/books/1387707184l/1032554.jpg

https://cdn.meme.am/instances/500x/68370423.jpg

https://cdn.meme.am/instances/500x/68370522.jpg
 ).sample
end


