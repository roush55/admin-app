# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user=User.create([
    {email: "member8@gmail.com", name: "nada",is_female: "true", mobile_number: "055888999",password: "123456"},
    {email: "member9@gmail.com", name: "yara",is_female: "true",mobile_number: "055888999",password: "123456"},
    {email: "member10@gmail.com", name: "lara",is_female: "true",mobile_number: "055888999",password: "123456"},
    {email: "member12@gmail.com", name: "samerah",is_female: "true",mobile_number: "055888999",password: "123456"}])
