/*

Question:
Use the variables you have set up on challenge 2.
We want to buy a game we always wanted but it can only be purchased if we can fulfill certain conditions! Why? because if life permits!
Add if statements after all the declarations. 
Write an if statement with the logic that [if you have children] then print "Being a parent is hard, my money goes to my children instead of games!".
Additionally, write an if statement with the logic that [if your Age is greater than 18] then print "Adulting is hard I can't buy the game because I need to pay bills".
Finally, if none of these is true then print the statement "I'm young and I can do what I want so gimme that game!"

*/
var lastName:String = "Varadarajan"
var firstName:String = "Hayagreev"
let gender:String = "Male"
var age:Int = 22
var cashOnHand:Double = 50.5
var hasChildren:Bool = false
if hasChildren {
    print("Being a parent is hard, my money goes to my children instead of games!")
}
else if age > 18 {
    print("Adulting is hard. I can't buy the game because I need to pay bills!")
}
else {
    print("I'm young and I can do what I want so gimme that game!")
}
