Dir[File.join(Rails.root, 'lib/image', 'member', '*.png')].each { |image|
  member_name = File.basename(image, '.png')
  @members = Member.all.where(name: member_name)
  @members.each do |member|
    @mi = Image.new
    @mi.image = File.new(image)
    @mi.imageable = member
    @mi.save!
  end
}
