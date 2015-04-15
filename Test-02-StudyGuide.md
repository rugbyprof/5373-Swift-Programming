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
