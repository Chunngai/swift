// Strings and Characters

// String Literals
let someString = "Some string literal value"

// Multiline String Literals
let quotation = """
The White Rabbit put on his spectacles. "Where shall I begin, 
please your Majesty?" he asked. 
	
"Begin at the beginning," the King said gravely, "and go on 
till you come to the end; then stop."
"""

/*
A multiline string literal includes all of the lines between its opening and 
closing quotation marks. 
The string begins on the first line after the opening quotation marks (""") and 
ends on the line before the closing quotation marks, which means that 
neither of the strings below start or end with a line break:
*/
let singleLieneString = "These are the same."
let multilineString = """
These are the same.
"""

/*
If you want to use line breaks to make your source code easier to read, 
but you don’t want the line breaks to be part of the string’s value, 
write a backslash (\) at the end of those lines:
*/
let softWrappedQuotation = """
The White Rabbit put on his spectacles. "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on\
till you come to the end; then stop."
"""

/*
To make a multiline string literal that begins or ends with a line feed, 
write a blank line as the first or last line
*/
let lineBreaks = """
	
This string starts with a line break.
It also ends with a line break.

"""

/*
A multiline string can be indented to match the surrounding code. 
The whitespace before the closing quotation marks (""") tells Swift 
what whitespace to ignore before all of the other lines. 
However, if you write whitespace at the beginning of a line in addition to 
what’s before the closing quotation marks, that whitespace is included
*/
let linesWithIndentation = """
	This line doesn't begin with whitespace.
		This line begins with four spaces.
	This line doesn't begin with whitespace.
	"""
	
// Special Characters in String Literals
/* 
The escaped special characters \0 (null character), \\ (backslash), 
\t (horizontal tab), \n (line feed), \r (carriage return), 
\" (double quotation mark) and \' (single quotation mark)

An arbitrary Unicode scalar value, written as \u{n}, 
where n is a 1–8 digit hexadecimal number
*/
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
let dollarSign = "\u{24}"
let blackHeat = "\u{2665}"
let sparklingHeat = "\u{1F496}"

/*
Because multiline string literals use three double quotation marks 
instead of just one, you can include a double quotation mark (") 
inside of a multiline string literal without escaping it. 
To include the text """ in a multiline string, 
escape at least one of the quotation marks
*/
let threeDoubleQuotationmarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""

// Extend String Delimiters
// like the raw string in python
/*
You can place a string literal within extended delimiters 
to include special characters in a string without invoking their effect. 
You place your string within quotation marks (") 
and surround that with number signs (#)

For example, printing the string literal #"Line 1\nLine 2"# 
prints the line feed escape sequence (\n) rather than 
printing the string across two lines
*/

/*
If you need the special effects of a character in a string literal, 
match the number of number signs within the string following the escape character (\). 
For example, if your string is #"Line 1\nLine 2"# and you want to break the line, 
you can use #"Line 1\#nLine 2"# instead. 
Similarly, ###"Line1\###nLine2"### also breaks the line
*/

/* 
String literals created using extended delimiters can also be multiline string literals. 
You can use extended delimiters to include the text """ in a multiline string, 
overriding the default behavior that ends the literal
*/
let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#