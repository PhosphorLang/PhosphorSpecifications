# Generics

## Class Example

```phosphor
class Vector [Type, constant size: UInt]
{
    ...
}

let vector := Vector[Int, 8];
```

Here, the class `Vector` is generic. It has two generic parameters: `Type` and `size`. The first one is a type parameter, the second one a constant parameter. Both are known at compile time and are part of the type of the class. As such, the type of `vector` is `Vector[Int, 8]`.

## Function Example

```phosphor
function getById [ReturnType] (id: UInt): ReturnType
{
    ...
}

let explicitValue := getById[MyClass](8);

let inferedValue: MyClass := getById(8);
```

The function `getById` is also generic. It has the one generic type parameter `ReturnType`, which is used to define the type of the function's return value. \
When used, the type parameter must either be specified explicitly (as in the `explicitValue` assignment) or be inferable from the context (as with `inferedValue`, whose type is explicitely stated and as such can be used to infer the type parameter of the function).
