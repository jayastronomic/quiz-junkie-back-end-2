# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

Question.destroy_all
IncorrectAnswer.destroy_all

q1 = Question.create!(category: "Computer Science", difficulty: "easy",question_title: "In any programming language, what is the most common way to iterate through an array?", correct_answer: "&#039;For&#039; loops")

q2 = Question.create!(category: "Computer Science", difficulty: "easy", question_title: "When Gmail first launched, how much storage did it provide for your email?", correct_answer: "1GB")

q3 = Question.create!(category: "Computer Science", difficulty: "easy", question_title: "The programming language &#039;Swift&#039; was created to replace what other programming language?", correct_answer: "Objective-C")

q4 = Question.create!(category: "Computer Science", difficulty: "easy", question_title: "What does the Prt Sc button do?", correct_answer: "Captures what&#039;s on the screen and copies it to your clipboard")

q5 = Question.create!(category: "Computer Science", difficulty: "easy", question_title: "What is the code name for the mobile operating system Android 7.0?", correct_answer: "Nougat")

IncorrectAnswer.create!(answer: "&#039;If&#039; Statements" , question_id: q1.id)
IncorrectAnswer.create!(answer: "&#039;Do-while&#039; loops" , question_id: q1.id )
IncorrectAnswer.create!(answer: "&#039;While&#039; loops", question_id: q1.id )
IncorrectAnswer.create!(answer:"512MB", question_id: q2.id )
IncorrectAnswer.create!(answer:"5GB" , question_id: q2.id )
IncorrectAnswer.create!(answer:"Unlimited" , question_id: q2.id )
IncorrectAnswer.create!(answer:"C#" , question_id: q3.id)
IncorrectAnswer.create!(answer:"Ruby" , question_id: q3.id)
IncorrectAnswer.create!(answer:"C++", question_id: q3.id)
IncorrectAnswer.create!(answer:"Nothing", question_id: q4.id )
IncorrectAnswer.create!(answer:"Saves a .png file of what&#039;s on the screen in your screenshots folder in photos" , question_id: q4.id )
IncorrectAnswer.create!(answer:"Closes all windows"  , question_id: q4.id )
IncorrectAnswer.create!(answer:"Ice Cream" , question_id: q5.id )
IncorrectAnswer.create!(answer:"Jelly Bean", question_id: q5.id )
IncorrectAnswer.create!(answer:"Marshmellow", question_id: q5.id )
