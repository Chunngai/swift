A simple way to receive standard input from the console is using the **readLine() function**.  

For example, we are to receive
```swift
1 2.33 str
```
from the console, the code can be:
```swift
let input = readLine()!.split(separator: " ")
let integerInput = Int(input[0])!
let doubleInput = Double(input[1])!
let stringInput = String(input[2])
```

And some explanation:    

The readLine() function receives the input from the console as a String? type value. An exclamation mark '!' is added to guarantee that the return value is not nil.  

*references:*  
*(1) [readline](https://swiftdoc.org/v4.2/func/readline/#func-readline_-bool)*  
*(2) [Swift控制台输入（目前研究出来的最简单的办法）](https://www.jianshu.com/p/8c04bb945744)*  

The split() function here returns an array of SubString type values.  

 The SubString type values can be converted into Int, Double, String and other type values using the corresponding initializers.  

Note that readLine() **cannot** read standard input from the console in **playgrounds**. To read standard input, create an OS X -> choose Command Line Tool project.

*references:*
*(3) [readLine() in playgrounds](https://forums.developer.apple.com/thread/37057)*
