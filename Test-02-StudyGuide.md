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
