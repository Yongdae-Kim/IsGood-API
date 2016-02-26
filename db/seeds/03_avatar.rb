

(1..1000).each do |index|
   a = Avatar.new
   a.nickname = AvatarsHelper.gen_unique_value
   a.save
end
