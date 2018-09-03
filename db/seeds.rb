# Default Categories

bass = Category.create(name: 'Bass')
lead = Category.create(name: 'Lead')
pad = Category.create(name: 'Pad')
percussion = Category.create(name: 'Percussion')
arpeggio = Category.create(name: 'Arpeggio')
noise = Category.create(name: 'Noise')

# Create User 1 and a patch

joey = User.create(username: 'joey', password: 'joeyjoey', password_confirmation: 'joeyjoey')

patch = Patch.create(name: 'cool', game: '', description: 'awesomely awesome patch', original: true)

joey.patches << patch

patch.categories << bass

# Create User 2 and a patch

hoey = User.create(username: 'hoey', password: 'hoeyhoey', password_confirmation: 'hoeyhoey')

patch2 = Patch.create(name: 'wow', game: 'Sonic 1', description: 'wowie wow patch', original: false)

hoey.patches << patch2

patch2.categories << percussion

#Create a lot of patches
array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18Web Hosting Providers on Thumbtack cost
$40 - $100,19,20]
array.each do |i|
  p = Patch.create(name: "#{i}h", game: '', description: "#{i}h", original: true)
  hoey.patches << p
end

array.each do |i|
  p = Patch.create(name: "#{i}j", game: '', description: "#{i}j", original: true)
  joey.patches << p
end
