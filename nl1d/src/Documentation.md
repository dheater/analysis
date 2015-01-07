# Units Software Library Design Specification





This is an example for embeding requirements from a JSON file into a markdown document.



Print just the text of a requirement


```
Provide a datatype Days that stores a number of days provides reasonable mathematical operators
```

Print the whole requirement


```
Requirement Id: units-2

Provide a datatype Days that stores a number of days provides reasonable mathematical
operators

Success critera:
    - A declared Days object has the value 0.0 when not given a specific initial value.
    - A declared Days object has the expected initial value when explicitly initialized.
    - The Days datatype can be cast to a double.
    - The Days datatype cannot be assigned literal numeric value without an explicit cast
          operator.
    - The addition/subtraction/multiplication/division of two decimal values of degrees
          celsius provides the correct mathematical answer within a reasonable epsilon
    - The unary '-' operator results in the negative of the original value.
    - Application of the '+=' operator yields the correct answer within some epsilon
    - Application of the '-=' operator yields the correct answer within some epsilon
```

