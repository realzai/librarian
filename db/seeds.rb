User.create(email_address: "zaibutcooler@gmail.com", password: "Zai2025$")

genres = [
  'Productivity',
  'Time Management',
  'Business',
  'Leadership',
  'Stoicism',
  'Inspiration',
  'Story',
  'Tech'
]

genres.each do |genre|
  Genre.create(name: genre)
end
