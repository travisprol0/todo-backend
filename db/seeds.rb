# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Task.delete_all

Task.create(text: "Buy rice", category: "Food")
# [
#       {
#         text: "Buy rice",
#         category: "Food",
#       },
#       {
#         text: "Save a tenner",
#         category: "Money",
#       },
#       {
#         text: "Build a todo app",
#         category: "Code",
#       },
#       {
#         text: "Build todo API",
#         category: "Code",
#       },
#       {
#         text: "Get an ISA",
#         category: "Money",
#       },
#       {
#         text: "Cook rice",
#         category: "Food",
#       },
#       {
#         text: "Tidy house",
#         category: "Misc",
#       },
#     ]