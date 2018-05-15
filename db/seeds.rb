bass = Category.create(name: 'Bass')
lead = Category.create(name: 'Lead')
pad = Category.create(name: 'Pad')
percussion = Category.create(name: 'Percussion')
arpeggio = Category.create(name: 'Arpeggio')
noise = Category.create(name: 'Noise')

joey = User.create(username: 'joey', password: 'joeyjoey', password_confirmation: 'joeyjoey')

patch = Patch.create(name: 'cool', game: '', description: 'awesomely awesome patch', original: true)

joey.patches << patch

patch.categories << bass
