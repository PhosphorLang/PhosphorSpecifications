# Memory Management

## General

### Owner

The owner of an object is either a function or another object.

If the owner of the object is a function, it is created in its stack frame. The owner function has to allocate the memory and either create the object in it itself or pass the memory area to a function which returns the object (either by creating it in the transferred memory area or by calling a function itself which returns the object).

If the owner of the object is another object, it is created on the heap. The memory is allocated by the function that creates the object. Such an object must be assigned as a property to the owner object. At the end of the owner object's life, the destructor of the object is automatically called and the memory is released.

## In functions

### Stack objects

```phosphor
var object := Object();

// function end
```

Memory allocation of "object" on the stack. \
The object is owned by the function. \
When the function ends, the destructor of the object is automatically called and the memory is released.

Stack objects may be passed as parameters to functions. \
Assignment as a property of an object is prohibited. \
If the function returns the object as a return value, the calling function must make the allocation in its own stack frame and the called function must create the object in this memory area. The pointer to the memory area is stored in the register of the return value. Afterwards, the object belongs to the caller function.

### Heap objects

```phosphor
var object := Object();

anotherObject.objectReference := object;

// Function end
```

Memory allocation of "object" on the heap. \
The object belongs to "anotherObject" to which it was allocated. Thus "anotherObject" is the owner object of "object". \
At the end of the function, **no** memory is released and no destructor is called.

Heap objects may be passed as parameters to functions or assigned to the property of an object. \
Passing as a return value of the function is done by a pointer to the heap object. The object then **does not** belong to the caller function but continues to belong to the owner object.
