User stories -
    The user can add plants to their garden collection.
    The user can receive information on how to care for them.
    The user is met with a homepage with a did you know section about plant care.

Data - The attributes for the plant class are indexed, and linked to option buttons and dropdown lists

MVP - The garden app should let the user manage a collection of their plants and receive information back on how to care for them via a schedule of sorts.


| HTTP Verbs | Routes | Actions | 
| GET | /plants | index |  
| GET | /plants/:id | show |  
| GET | /plants/new | new |  
| GET | /plants/:id/edit | edit |  
| POST | /plants | create |  
| DELETE | /plants/:id | destroy | 
| PUT/PATCH | /plants/:id | update |




Specifications for the Sinatra Assessment
Specs:

 Use Sinatra to build the app
 Use ActiveRecord for storing information in a database
 Include more than one model class (e.g. User, Post, Category)
 Include at least one has_many relationship on your User model (e.g. User has_many Posts)
 Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
 Include user accounts with unique login attribute (username or email)
 Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
 Ensure that users can't modify content created by other users
 Include user input validations
 BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
 Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
 
Confirm

 You have a large number of small Git commits
 Your commit messages are meaningful
 You made the changes in a commit that relate to the commit message
 You don't include changes in a commit that aren't related to the commit message
