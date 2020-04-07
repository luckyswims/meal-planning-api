# Meal Planning API

## Technologies Used
-Ruby  
-Ruby on Rails  
-Curl  

## About
This API was develped for a project during my Software Engineering Immersive at
General Assembly. The goal was to create a full stack application with resources
the users could Create, Update, Read, and Delete. For the project I chose to
create a meal planning application to help users plan out their meals for the
week. The links to the deployed API and Client are below:

[Deployed API]  
[Deployed Client]

## Development
### Version 1:
The first version of the API was straightforward. I had been provided with a
template for the project which implemented a Users table, and User authentication.
I needed to create an additional resource that would belong to a user. My idea
for an application was a meal planning app, where users could build meal plans
to help them figure out things like what groceries they would need. I decided
the first resource I would create would be a Meal Plan, that would contain the
meals the user intended to make for that week.

I started by thinking about what information I would want to store in the meal
plan. My initial idea was that a Meal Plan would contain Meals, and a Meal would
contain a list of Ingredients. However, I knew I needed to break that down and
start with the initial version. I decided that a Meal Plan would have a name and
contain 7 meals, each stored as a string. I then used this idea to build my ERD.

![Version 1 ERD][ERD1]

Once I had my design I went to work implementing it in Rails. I scaffolded the
Meal Plan resource, reviewed the result, and made any necessary updates. I then
created my curl scripts to test the endpoints, and ran them to make sure the
Meal Plan resource had been setup correctly.

Once my curl scripts were working I needed to implement one of two classes that
had been provided to us for access control. The OpenReadController class would
allow users to see all instances of the resource, but only edit resources they
had created. The ProtectedController would make it so that users could only
interact with resources they had created. Based on my use case I decided to use
the ProtectedController class.

When implementing the ProtectedController class I ran into an issue. After
updating the controller to use the current_user method, a method from the ProtectedController class, I started getting errors when running my curl scripts.
After spending a while trying to troublshoot the issue, I discussed it with some
of my peers, and one of them helped me identify that I had the wrong class
inheriting from ProtectedController, and so I didn't have access to the 
current_user method.  

Once that issue was resolved I was able to finish up version 1 of the api
without any further issue.

## To Do list

-Add meal resource that will be referenced by the meal plan resource.  
-Add an ingredient quantity resource that will have a many to many relationship
with the meal resource  
-Update the API to handle the search function (currently search is handled 
client side)  
-Build function to aggregate all of the ingredients used in meals for a given
meal plan in order to build a shopping list for the user  

[Deployed API]: https://luckys-meal-planning-api.herokuapp.com
[Deployed Client]: https://luckyswims.github.io/meal-planning-client/
[ERD1]: https://github.com/luckyswims/meal-planning-api/blob/master/images/Meal%20Planning%20MVP%20ERD.jpeg
