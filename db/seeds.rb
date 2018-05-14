joey = User.create(username: 'joey', password: 'joeyjoey', password_confirmation: 'joeyjoey')

patch = Patch.create(name: 'cool', game: '', original: true)

bass = Category.create(name: 'Bass')
lead = Category.create(name: 'Lead')
pad = Category.create(name: 'Pad')
percussion = Category.create(name: 'Percussion')
arpeggio = Category.create(name: 'Arpeggio')
noise = Category.create(name: 'Noise')

joey.patches << patch

patch.categories << bass
