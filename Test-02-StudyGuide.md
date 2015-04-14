## NOT DONE

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
func something(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var changed = sorted(names, something)
```

