# Variables and dataTypes
## Variables
Declare a variable and assign a value
``` dart
var myVariable = "Hello World";
```

declare constant
``` dart
final myConstant = "Hello World";
const myConstant1 = "Hello World";
```

## Data Types
### Numbers
``` dart
var myInt = 1;
int myInt = 1;
var myDouble = 1.1;
double myDouble = 1.1;
```

### Strings
``` dart
var myString = "Hello World";
String myString = "Hello World";
String myString2 = """
                    MultiLine string
                    """;

```

### Booleans
``` dart
var myBool = true;
bool myBool = true;
```

### Lists
``` dart
var myList = [1, 2, 3];
List myList = [1, 2, 3];
```

### Maps
``` dart
var myMap = {
  "key1": "value1",
  "key2": "value2"
};
Map myMap = {
  "key1": "value1",
  "key2": "value2"
};
```

### Dynamic
``` dart
var myDynamic = "Hello World";
dynamic myDynamic = "Hello World";
```

# Decision making and loops

## decision making

### if
``` dart
if (condition) {
  // do something
}
```

### if else
``` dart
if (condition) {
  // do something
} else {
  // do something else
}
```

### if else if
``` dart
if (condition) {
  // do something
} else if (condition) {
  // do something else
}
```

### switch
``` dart
switch (condition) {
  case "value1":
    // do something
    break;
  case "value2":
    // do something else
    break;
  default:
    // do something else
    break;
}
```

## loops
### for
``` dart
for (var i = 0; i < 10; i++) {
  // do something
}
```
#### for in
``` dart
for (var item in list) {
  // do something
}
```

#### for in with index
``` dart
for (var item in list.entries) {
  // do something
}
```


### while
``` dart
while (condition) {
  // do something
}
```

### do while
``` dart
do {
  // do something
} while (condition);
```


# Functions

``` dart
myFunction(param1, param2) {
  // do something
}

```





