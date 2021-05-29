/*

Question:
Create a String variable named drawPixel and set up an initial value that you want for it.
Then create an Int variable named height. You can assign any value you want for it (preferably 10 or below).
Additionally, create a String variable named tempRow, you can initialize it as an empty string if you want.
First create a for loop  with value columnPixel from 1 to the specified height. First step would be to assign tempRow as an empty String (“”)
Then, create a nested for loop (loop inside the for loop) from 1 to the specified columnPixel. Inside this nested for loop append tempRow with the specified drawPixel
Finally, outside the nested for loop you should print your final value for the tempRow.
As an example let’s assume that drawPixel is “x” and height is 5. The resulting output should be:
x
xx
xxx
xxxx
xxxxx

*/
var drawPixel:String = "x"
var height:Int = 5
var tempRow:String
for columnPixel in 1...height{
    tempRow = ""
    for rowPixel in 1...columnPixel{
        tempRow += drawPixel
    }
    print(tempRow)
}