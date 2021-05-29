/*

Question:
Create and Use the Double value cashOnHand on challenge 2. Also Create a Double value called runningCash.
Create a Double variable named percentGain and set a value you want for it.
Create an Int variable named yearsToInvest. Set a value that you want for it, the longer the better.
Create an Int variable named yearsElapsed. Set a value the value to 0
Let’s assume that a Broker has offered you to invest in the stock market with an a fixed gain of percentGain per year. You take the offer and use all of your cashOnHand to invest.
Use the repeat while Loop to calculate for your possible return of investment after your specified amount of yearsToInvest.
First, set the value of runningCash to be the same value as cashOnHand. Let’s also convert that percentGain to a real percentage by dividing it by 100.
Then, set up your repeat while loop, the code will loop while yearsElapsed is less than yearsToInvest.
Inside your loop recalculate your runningCash where the new value is equal to the current value + its percentGain.
Print the value of runningCash.
Finally, yearsElapsed should add by 1 before the loop checks the while condition.
How rich will you be after all those years?
As an example let’s assume that cashOnHand is “2000”, percentGain is “10” and yearsToInvest is “5”. The resulting output should be:
2200.0
2420.0
2662.0
2928.2
3221.02

*/
var cashOnHand:Double = 50.5
var runningCash:Double
var percentGain:Double = 10.6
var yearsToInvest:Int = 5
var yearsElapsed:Int = 0
runningCash = cashOnHand
percentGain /= 100
repeat {
    runningCash = runningCash + ((percentGain)*runningCash)
    print(runningCash)
    yearsElapsed += 1
}while yearsElapsed<yearsToInvest