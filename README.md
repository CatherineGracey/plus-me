# Plus Me

Plus me is an app designed for small group meetups, and is targeted at people who just want to have a coffee with someone or find someone to go to an event with. Users are able to create events for others to attend and find existing events to join.

GitHub: https://github.com/CatherineGracey/plus-me  
Heroku: https://plus-me.herokuapp.com

## Approach Taken

For this project I decided to use the Ruby on Rails framework. Rails comes with a lot of functionality built-in so it is ideal for rapid development, which was particularly helpful for a solo project written over four days. While this project was an opportunity to use a front end framework I chose not to, because at this stage of development it would have added nothing to the project beyond significant overhead.

Development progressed with an agile approach. I wrote user stories to describe the initial functionality of the program, then broke these stories down into small and specific cards describing the tasks that would be needed to achieve them. This was managed using Trello.

## Installation

To install this app, clone or fork from https://github.com/CatherineGracey/plus-me
bundler install
rails db:create
rails db:migrate
rails db:seed
rails server

## Project Notes

Users stories and task cards are available online at https://trello.com/b/4he0xaI1/final-ga-project

## Future Development

There are several main areas of development that need to be explored with this project:

1. Users are currently unable to contact each other via the website. This is currently worked around by allowing organisers to see user email addresses, but this opens up significant privacy issues that need to be resolved.
2. Users are currently unable to filter events, so a list of all events will be displayed upon search. This might be fine for an MVP, but it will rapidly become unworkable as events happen and are still left in the listing.
3. Event organisers are able to set criteria for their events, but no restriction of users happens. This means that an event specifically targeted at women might have an all male sign up.
4. Users have no way to recommend or warn each other about past attendees. There is no mechanism to discourage users from registering to attend every event and then not turning up or turning up and making the rest of the group wish that they hadn't.
