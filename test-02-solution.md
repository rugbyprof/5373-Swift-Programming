
## Name __________________________

- Write your answers on the paper provided
- Turn in all materials
- Make sure you answer clearly and concisely
- Since this is a language class, syntax is important not just logic
- Answers will be graded on correctness and best practice

| Question   |  Points  |  Earned  |
|:--------------------:|:----------------:|:----------------:|
| 01         |    10    |        |
| 02         |    10    |        |
| 03         |    5     |        |
| 04        |    5     |        |
| 05        |   10     |        |
| 06        |    5     |        |
| 07        |  15      |        |
| 08        |  5       |        |
| 09        |   5      |        |
| 10        |  10      |        |
| 11        |   5    |        |
| 12        |   15    |        |
| 13        |   10    |        |
| 14        |   5    |        |
| 15        |   10    |        |
| 16        |   10    |        |
| 17        |   5    |        |

#### Question 1 `10 points`

Write a function called `doTheCalculation` wich receives `3` parameters:
- Array of doubles called `Data` 
- Integer called `Iterations` 
- Double called `Ratio` 

Loop through the array the number of times dictated by `Iterations` and multiply each entry by `Ratio`.

When this is complete, return the average of all the values in the array.

----

#### Question 2 `10 points`

Given: 

```swift
enum IceCream {
    case Vanilla
    case Chocolate
    case Strawberry
    case Banana
    case Mint
}

var favorite = IceCream.Vanilla

```

Write a switch statement that handles all possible values and prints out a snappy statement like: `"Vanilla! Gross!"`.
    
----

#### Question 3  `5 points`

Declare a variable called `x` to be a `Double` without using the keyword `Double`

----

#### Question 4  `5 points`

Whats the difference between the following two statements:

```swift
var item: ChecklistItem
var item = ChecklistItem()
```
Your answer should be no longer than a sentence or two.

----

#### Question 5 `10 points` 

Given:
- An array if integers: `var A = [4,58,9,12,23,4,2,56,34,77,21,11]`
- You can assume that `A` will never be empty.

Write a function called `getMinMax` that receives an _Int_ array, and returns both the _minimum_ and _maximum_ value found in the array.

----

#### Question 6 `5 points` 

Given some optional: `var list : Checklist?` write the necessary code to unwrap it. Do not use forced unwrapping.

----

#### Question 7 `15 points` 

Given the following code snippet:

```swift
let nums = [3, 4, 5, 6, 7, 8, 9]

func whoknows(s1: Int, s2: Int) -> Bool {
    if (s1 % 2) == 0 {
        return s1 < s2
    }
    return s1 > s2
}

var something = sorted(nums, whoknows)

```
What order will `nums` be when it is run?

Write your answer clearly in the following format: `[ ? , ? , ? , ... , ? ]`

----

#### Question 8 `5 points` 

Given the following `For-In` loop:

```
for item in items {
    if !item.checked {
        print("\(item.name) , \(item.age) , \(item.fatPercentage)")
        count += 1
    }
}
```

Write the ***class*** or ***struct*** definition for items.

----

#### Question 9 `5 points` 

Given the following code snippet:

```swift
let pi = 3.141592
pi = 3 //not allowed

//allowed
let item = ChecklistItem()
item.text = "Do the laundry"
item.checked = false
item.dueDate = yesterday
```
Explain why one constant can't be changed, while another one can.

Your answer should only be one or two sentences. 

----

#### Question 10 `10 points` 

Given the following snippet:

``` swift

var names = ["Bob","Sue","Diya","Raj","Kamya"]

//Function
func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}

//Call
var reorder = sorted(names, backwards)
```

How could you reorder the array without using the separate function "backwards".

Show your answer as you would write it in Swift. 

----

#### Question 11 `5 points` 

Given the following snippet:

``` swift
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]
```

Write a `for in` loop to traverse through the dictionary and display each value along with its corresponding type.

Your output should look like:

```
Prime: [2, 3, 5, 7, 11, 13]
Fibonacci: [1, 1, 2, 3, 5, 8]
Square: [1, 4, 9, 16, 25]
```

----

#### Question 12 `15 points`

***Part A:***

Given the following:

```swift
var array1 = ["a","b","c"]
var array2 = array1
array2[2] = "x"
```

What are the values of `array1` and `array2`?

***Part B:***
```swift
//case1
struct S { var data: Int = -1 }
var a = S() 
var b = a						
a.data = 42						
println(a.data = "\(a.data), b.data = \(b.data)")
	
//case 2
class C { var data: Int = -1 } 
var x = C() 
var y = x						
x.data = 42					
println("x.data = \(x.data), y.data = \(y.data)")	
```

Output:

```
a.data = ?, b.data = ?
x.data = ?, y.data = ?
```

What will be the output in both cases and explain why?

----

#### Question 13 `10 points`

Given the following categories of animals: 
```swift
House Hold Animals 	    ["dog", "cat"]
Farm Animals 			["cow", "chicken", "sheep", "dog", "cat"]
City Animals            ["bird", "mouse" , "cat"]
Jungle Animals          ["snake","monkey","bird","gorilla"]
```
A. What collection type would you use to store these in Swift?

B. If I wanted to quickly find out which animals were in more than one group or find the animal that's only in one group, how would I do so? 

----

#### Question 14 `5 points`

Look at the output from the following statement:

```swift
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
```

Output:
> 3 times 2.5 is 7.5

A. Does string interpolation in swift allow for arithmetic operations inside a string?

B. If not, what should the answer be, or would it error?

----

#### Question 15 `10 points`

Take the following code snippet, and re-write it in a concise compact format.

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

----

#### Question 16 `10 points`

```swift
var cities = ["Atlanta", "Dallas"]
```
A. Write the code to add the city "Chicago" to the array, cities.

B. Write the code to add the city "New York" to the array after the city "Atlanta".

C. Write the code to remove the city "Dallas" from the array, cities.

----

#### Question 17 `5 points`

Provide an operator for comparing reference-type constants and variables to determine whether they refer to same object?


