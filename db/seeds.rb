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


# new_prog.taskList.create(position: 3, task_id: task3.id)




# step1_for_program = Step.create(program_id: prog_with_steps.id, task_id: task3.id, position: 1)
# step1_for_program = Step.create(position: 1)

# empty_prog = Program.create(title: "1st Program", description: "1st Program description")
# prog_with_steps = Program.create(title: "2st Program", description: "2st Program description")
# step1_for_program = Step.create(program_id: prog_with_steps.id, task_id: task3.id, position: 1)
# step2_for_program = Step.create(program_id: prog_with_steps.id, task_id: task4.id, position: 2)


# jer = User.find_by(uid: "jer@jer.com")


# Assignment.create(user_id: jer.id, task_id: task1.id, program_id: nil)
# Assignment.create(user_id: jer.id, task_id: nil, program_id: prog_with_steps.id)
# Assignment.create(user_id: jer.id, task_id: nil, program_id: empty_prog.id)

# Assignment.create(user_id: 1, task_id: 37, program_id: nil)
# Assignment.create(user_id: 1, task_id: nil, program_id: 17)



# error case when task is in program, and program and task are assigned to me


# jer.assignments.create(user_id: 1, task_id: 42, program_id: nil)
# jer.assignments.create(user_id: jer.id, task_id: task4.id, program_id: prog2.id )
# jer.assignments.create(user_id: jer.id, task_id: task4.id, program_id: 14 )



# jer.tasks