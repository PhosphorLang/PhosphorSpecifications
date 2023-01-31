# Memory Management

## Definitions

- "Passing the stack *down*" -> Passing as a parameter of a function.
- "Passing the stack *up*" -> Passing as a return value of a function.
- "Leaving the stack" -> Assignment as a property of an object.

## Stack objects

```phosphor
var object := Object();
```

Memory allocation of: "object".
Created on the stack.

May be given *down* the stack.
Must **not** be given *up* the stack.
Must **not** leave the stack.

## Heap objects

```phosphor
class object
{
    public heapObject: HeapObject;

    constructor ()
    {
        heapObject := HeapObject();
    }
}
```

Memory allocation of: "heapObject".
Created on the heap.

May be passed *down* the stack.
Must be passed *up* the stack.
Must **not** leave the stack.

## Parameter

```phosphor
function (object: Object);
```

**No** memory allocation of: "object".
Created on stack or heap before the call.

May be passed *down* the stack.
May be passed *up* the stack.
Must **not** leave the stack.
