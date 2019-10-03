// Closures

// Closure Expressions

// The Sorted Method
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

/*
The sorted(by:) method accepts a closure that 
takes two arguments of the same type as the array’s contents, 
and returns a Bool value to say 
whether the first value should appear before or after the second value 
once the values are sorted. 
The sorting closure needs to return true 
if the first value should appear before the second value, and false otherwise.
*/
func backward(_ s1: String, _ s2: String) -> Bool {
return s1 > s2
}
var reversedNames = names.aorted(by: backward)

// Closure Expression Syntax
/*
The parameters in closure expression syntax 
can be in-out parameters, but they can’t have a default value. 
Variadic parameters can be used if you name the variadic parameter. 
Tuples can also be used as parameter types and return types.
*/

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
return s1 > s2
} )

// Inferring Type From Context
/*
Because the sorting closure is passed as an argument to a method, 
Swift can infer the types of its parameters and the type of the value it returns.
The sorted(by:) method is being called on an array of strings, 
so its argument must be a function of type (String, String) -> Bool. 
This means that the (String, String) and Bool types 
do not need to be written as part of the closure expression’s definition. 
Because all of the types can be inferred, 
the return arrow (->) and the parentheses around the names of the parameters 
can also be omitted:
*/
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )

// Implicit Returns from Single-Expression Closures
/*
Single-expression closures can implicitly return the result of their single expression 
by omitting the return keyword from their declaration
*/
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )


// Shorthand Argument Names
reversedNames = names.sorted(by: { $0 > $1 } )

// Operator Methods
reversedNames = names.sorted(by: >)