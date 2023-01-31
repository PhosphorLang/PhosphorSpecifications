# Aggregate types

## Definitions

### Class

A class has a compile time known constant size with members of different types. \
The class is a build-in way to define custom types.

### Vector

A vector has compile time known constant size and members of the same type. \
The size (length) is part of the type. \
The vector is a build-in generic type.

### Array

An array has a runtime constant size and members of the same type. \
The length is part of the runtime data structure. \
The array is a build-in generic type.

### List

A list has a runtime variable size and members of the same type. \
The list is a class containing the length and a reference to an array holding the elements. As soon as the length exceeds the capacity of the array, a new array is allocated and the elements are copied over. \
The list is a standard library type.

## Literals

### Vector literal

```phosphor
let vector := Vector { 1, 2, 3 }; // Both element type and vector size are inferred.
```

### Array literal

```phosphor
let array := Array { 1, 2, 3 }; // The element type is inferred.
```

### Note to Literal Construction

TODO: Should the constructor of an array with its dynamic size of paramaters be compiler magic for the build-in type `Array` or should it generally be possible to accept a dynamic number of parameters in a function/method/constructor (useful, for example, in a `List`)?

## Indexing

Indexing is not handled via a special syntax but by providing a standard way to get/set values from homogeneous data structures. \
Just like all respective standard library structures and optionally user defined classes, Vector and Array will implement an interface with the methods `get` and `set`. The compiler will optimise the calls to both Vector and Array and assist other data structures by inlining.


```phosphor
let valueFromVector := vector.get(0);
let valueFromArray := array.get(i - 1);

vector.set(0, 8);
array.set(i - 1, 8);
```
