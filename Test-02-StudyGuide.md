## NOT DONE

### Topics:
- Ternary Conditional Operator
- Range Operators
- String Mutability
- String Interpolation
- Mutable vs Immutable
- Arrays
- Sets
- Dictionaries
- For-In Loop
- Functions
- Closure Expression Syntax
- Classes and Structures
- Value vs Reference Types


### Example Questions:

- Declare a variable called `x` to be a `Double` without using the keyword `Double`

----

- Whats the difference between the following two statements:
```swift
var item: ChecklistItem
var item = ChecklistItem()
```

----


- Explain why one constant can't be changed, while another one can. See following code snippet:
```swift
let pi = 3.141592
pi = 3 // not allowed

//allowed
let item = ChecklistItem()
item.text = "Do the laundry"
item.checked = false
item.dueDate = yesterday
```

----

- What is the purpose of optionals in Swift?

----

- Given some optional: `var list : Checklist?` write code to unwrap it. Do not use forced unwrapping.

----

- Write a function called `doTheCalculation` wich receives `3` parameters:
    - Array of doubles called `Data` 
    - Integer called `Iterations` 
    - Double called `Ratio` 
    - Loop through the array the number of times dictated by `Iterations` and mulitply each entry by `Ratio`.
- When this is complete, return the average of all the values in the array.

----

- Given: `let value = 13 //any integer`

- Write a switch statement that does the following:
    - Prints "small" for values less than 10
    - print "medium" for values bigger than small but less than 50
    - print "large" for values bigger than medium but less than 500
    - print "big" for values bigger than large but less than 500000
    - print "huge" for the rest
    
----

- What does the following code snippet output:

```
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func something(s1: String, s2: String) -> Bool {
    return s1 < s2
}
var changed = sorted(names, something)

for name in changed{
    print("\(name), ")
}
```

---

- Given the following `For-In` loop:

```
for item in items {
    if !item.checked {
        print("\(item.name) , \(item.age) , \(item.fatPercentage)")
        count += 1
    }
}
```

- Write the class or struct definition for items.

-----
-----

Student Questions Below (will be edited):

-----
-----
### Vipin Deshmukh, Naveen Vupputuri, Kiran Tej Badana

### Question 1

``` swift
func backwards(s1: String, s2: String) -> Bool {
return s1 > s2
}
var reversed = sorted(names, backwards)
```

Replace the backward function using the closure

Hint: Closure Syntax

{ (parameters) -> return type in
    statements
}

### Question 2

``` swift
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]
```

Use the for in loop to traverse through the dictionary to display value and its corresponding type.

Hint: Use tuple before in statement and nested loops are required

### Question 3

Types of Range Operators and give example?

-----
-----

### Varun Ayanala, Vinesh Thummala, Nanda Kishore Tokala 
-------------------------
### Question 1
-------------------------
```
func join(string s1: String, toString s2: String,
    withJoiner joiner: String = " ") -> String {
        return s1 + joiner + s2
}
1. join(string: "hello", toString: "world", withJoiner: "-") 
2. join(string: "hello", toString: "world")
Output of line 1 and 2. Give reason if they produce error.
```
---------------------------
### Question 2
---------------------------
```
What is the difference between sets and array? 
Create a set and insert some elements into a set?
```
----------------------------
### Question 3
----------------------------
```
let DictionarVal = [1: "one", 2: "two", 3:"three"]
Traverse though the dictionary to print all the key value pairs of dictionary.
```

-----
-----

### Srikanth Reddy Beerelli, Sampath Kumar Manne, Pulivarthi Vijay Kumar

### Question 1
Write a function to return min and max values of an integer array when,
<p>a) array has more than zero elements</p>
<p>b) array has zero elements</p>

### Question 2
``` swift
var array1 = [a,b,c]
var array2 = array1
array2.append(d)
var length = array1.count
```
In the above snippet what is the value of length and give the specific reason.

### Question 3
<p>a) Create a mutable dictionary and an immutable dictionary.</p>
<p>b) Create a mutable array and an immutable array.</p>

-----
-----

### Dinesh Amarneni, Yaswanth Amaraneni, Sharath Garlapati

## Question1
What is printing after line 3 or gives error?
```swift
1. let constantString = "Highlander"
2. constantString += " and another Highlander"
3. print(constantString)
```
----
## Question2
```
Write syntax for String interpolation.
```
----

## Question3
Shorthand the following code.
```swift
let contentHeight = 40
let hasHeader = true
var rowHeight = contentHeight
if hasHeader {
    rowHeight = rowHeight + 50
} else {
    rowHeight = rowHeight + 20
}
```

-----
-----

### Krishna Bakka, Rohit Mukherjee, Ankur Patel

## Question 1

-> Do you see something wrong with the code below? Yes or No? Elaborate your answer. 

``` swift
Switch Grades {
    case 0...60:
    println("FAIL")
    case 60...70:
    println("D")
    case 70...80:
    println("C")
    case 80...90:
    println("B")
    case 90...10:
    println("A")
    default:
    println("PASS")
    }
```
## Question 2

-> What is the output of the following code?

``` swift
for index in 1...5{
println("\(index) times 2 is \(index*2)")
}

for index in 1..<5{
println("\(index) times 2 is \(index*2)")
}
```
## Question 3

-> Arrays:

```swift
var cities = ["Atlanta", "Dallas"]
```
a). write a code to add the city "Chicago" to the array, cities.

b). Write a code to add the city "New York" to the array after the city "Atlanta".

c). write a code to remove the city "Dallas" from the array, cities.

-----
-----

## Madhuri Komuravelly, Surekha Kotiyala, Ramakrishna Veeravalli

# Question 1
```
class Person {
   var firstName: String?
   var lastName: String?
   let gender = "female"
	}
   let john = Person()
   john.firstName = "John"
   john.lastName = "Doe"
   john.gender = "male"

Does the above code work? if works, what is the output, if not why?
```
# Question 2  
```
//case1
struct S { var data: Int = -1 }
var a = S() 
var b = a						
 a.data = 42						
println("\(a.data), \(b.data)")
	
//case 2
class C { var data: Int = -1 } 
var x = C() 
var y = x						
x.data = 42					
println("\(x.data), \(y.data)")	

what will be the output in both cases and explain why?
```


# Question 3 
```
Provide an operator for comparing reference-type constants and variables to determine whether they refer to same object?
```

-----
-----
