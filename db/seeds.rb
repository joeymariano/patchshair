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
