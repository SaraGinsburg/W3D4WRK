# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all
users = User.create([{name: 'Zushi'},
                     {name: 'Faiga'},
                     {name: 'Mendel'},
                     {name: 'Zalman'},
                     {name: 'Chaya'}])
  polls = Poll.create([ {title: 'Wilmovsky Family survey', user_id: users[0].id},
                        {title: 'Toys survey', user_id: users[1].id} ])
  questions = Question.create([
  {text: "do you like 770 on Tishrei?", poll_id: polls[0].id},
  {text: "how do you like mb in the summer?", poll_id: polls[0].id},
  {text: "how hard is it not to see abba for so long?", poll_id: polls[0].id},
  {text: "how many word can you say properly?", poll_id: polls[0].id},
  {text: "Whats your favorite coffee?", poll_id: polls[0].id},
  {text: "Whats your favorite toy?", poll_id: polls[1].id}
])

answer_choices = AnswerChoice.create([
   {answer: "Yes. Near the Rebbe!" ,question_id: questions[0].id},
   {answer: "hard. too crowded. smelly!" ,question_id: questions[0].id},
   {answer: "hate it. want to see abba!!!" ,question_id: questions[1].id},
   {answer: "best!", question_id: questions[1].id}
  ])

# AnswerChoice.create(answer: "test answer choice" ,queston_id: questions[0].id)

  responses = Response.create([{user_id: users[1].id, answer_choice_id: answer_choices[2].id },
                               {user_id: users[1].id, answer_choice_id: answer_choices[1].id },
                               {user_id: users[2].id, answer_choice_id: answer_choices[1].id },
                               {user_id: users[0].id, answer_choice_id: answer_choices[3].id },
                               {user_id: users[4].id, answer_choice_id: answer_choices[3].id },
                               {user_id: users[2].id, answer_choice_id: answer_choices[3].id },
                               {user_id: users[3].id, answer_choice_id: answer_choices[2].id }
    ])
