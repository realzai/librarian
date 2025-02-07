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