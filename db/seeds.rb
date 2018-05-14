joey = User.create(username: 'joey', password: 'joeyjoey', password_confirmation: 'joeyjoey')

patch = Patch.create(name: 'cool', game: '', original: true)

bass = Category.create(name: 'bass')

joey.patches << patch

patch.categories << bass
