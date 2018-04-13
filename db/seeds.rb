# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

task1 = Task.create(title: "1st Task", description: "1st Description")
task2 = Task.create(title: "2st Task", description: "2st Description")
task3 = Task.create(title: "3st Task", description: "3st Description - for program")
task4 = Task.create(title: "4st Task", description: "4st Description - for program")


prog1_with_steps = Program.create(title: "1st Program", description: "1st Program description")
prog2 = Program.create(title: "2st Program", description: "2st Program description")


prog1_with_steps.program_items.create(position: 1, task_id: 1)
prog1_with_steps.program_items.create(position: 2, task_id: 1)
puts prog1_with_steps.tasks
