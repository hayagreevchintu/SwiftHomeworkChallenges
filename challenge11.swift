/*

Question:
For the Pets class - 
First, set up a basic initializer for your Pets class. Make an initializer with no arguments and have it set up a basic name, you can set the value to whatever you want.
Next, create an initializer take takes the name argument and set it as the initial name.
Finally, Test out your Pets class to see if it works.
For the Tamagotchi class - 
First, set up a basic initializer for your Tamagotchi class. Remember to call your super init to have it set up your basic name. Additionally, set boredom to 60 so your users can start playing with their virtual pets immediately after initializing.
Next, create an initializer that takes the name argument and set it by calling your super init class.  Additionally, set boredom to 60 so your users can start playing with their virtual pets immediately after initializing.
Then, modify the feed(), clean(), play(), and sleep() function that you have created, make it so that it checks if the value is 0 before deciding the appropriate course of action.
For the feed() function check if hunger is 0, if it is then print out “\(name) is already full”. Else just call the super class and do the same operations as before.
For the clean() function check if dirt is 0, if it is then print out “\(name) is already clean”. Else just call the super class and do the same operations as before.
For the play() function check if boredom is 0, if it is then print out “\(name) is already done playing”. Else just call the super class and do the same operations as before.
For the sleep() function check if drowsiness is 0, if it is then print out “\(name) has already slept“. Else just call the super class and do the same operations as before.
Next, modify the check() function. Let the values print same as before but add these if statements after the printing of values.
if hunger is >= 60 then print out “\(name) is hungry”. 
if dirt is >=  60 then print out “\(name) is dirty”. 
if boredom is >= 60 then print out “\(name) is bored”. 
if drowsiness is >= 60 then print out “\(name) is sleepy”. 
Finally, save your progress and test out your new and improved Tamagotchi app.

*/
class Pets{
    var name:String = ""
    var age:Int = 0
    
    init(){
        self.name = "Storm Trooper"
    }
    
    init(_ name:String){
        self.name = name
    }
    
    func clean(){
        print("\(name) has taken a bath.")
    }
    
    func feed(){
        print("\(name) has been fed.")
    }
    
    func play(){
        print("\(name) enjoyed playing with you.")
    }
    
    func sleep(){
        print("\(name) went to sleep.")
    }
}

var pet:Pets = Pets()
print(pet.name)
var pet2:Pets = Pets("Death Armor")
print(pet.name)

class Tamagotchi : Pets{
    var hunger:Int = 0
    var dirt:Int = 0
    var boredom:Int = 0
    var drowsiness:Int = 0
    
    override init(){
        super.init()
        self.boredom = 60
    }
    
    override init(_ name:String){
        super.init(name)
        self.boredom = 60
    }
    
    override func feed(){
        if (self.hunger == 0){
            print("\(name) is already full.")
        }
        else{
        super.feed()
        hunger = 0
        boredom += 20
        dirt += 20
        drowsiness += 10   
        }
    }
    
    override func clean(){
        if (self.dirt == 0) {
            print("\(name) is already clean.")
        }
        else {
        super.clean()
        dirt = 0
        hunger += 20
        boredom += 20
        drowsiness += 10
        }
    }
    
    override func play(){
        if (self.boredom == 0) {
            print("\(name) is already done playing.")
        }
        else{
        super.play()
        boredom = 0
        hunger += 20
        dirt += 20
        drowsiness += 10
        }
    }
    
    override func sleep(){
        if (self.drowsiness == 0) {
            print("\(name) has already slept.")
        }
        else {
        super.sleep()
        drowsiness = 0
        boredom += 20
        hunger += 20
        dirt += 10
        }
    }
    
    func check(){
        print("\(name)'s hunger is at \(hunger).")
        print("\(name)'s dirt is at \(dirt).")
        print("\(name)'s boredom is at \(boredom).")
        print("\(name)'s drowsiness is at \(drowsiness).")
        
        if (self.hunger >= 60) {
            print("\(name) is hungry.")
        }
        if (self.dirt >= 60) {
            print("\(name) is dirty.")
        }
        if (self.boredom >= 60) {
            print("\(name) is bored.")
        }
        if (self.drowsiness >= 60) {
            print("\(name) is sleepy.")
        }
    }
}

var game:Tamagotchi = Tamagotchi("Thunder Blade")
game.clean()
game.feed()
game.play()
game.sleep()
game.feed()
game.clean()
game.sleep()
game.check()