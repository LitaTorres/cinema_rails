# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do |x|
    Serie.create(name: "Nombre de la serie #{x+1}", synopsis: "Sinopsis realizada #{x+1}", director: "Nombre del o los directores #{x+1}")
end

10.times do |x|
    Movie.create(name: "Nombre de la película #{x+1}", synopsis: "Sinopsis realizada #{x+1}", director: "Nombre del o los directores #{x+1}")
end

10.times do |x|
    Documentaryfilm.create(name: "Nombre del documental #{x+1}", synopsis: "Sinopsis realizada #{x+1}", director: "Nombre del o los directores #{x+1}")
end