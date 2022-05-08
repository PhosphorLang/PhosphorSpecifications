# Classes

## Basic example

```phosphor
class Greeter
{
    private greeting: String;

    public constructor (whomToGreet: String)
    {
        this.greeting := 'Hello ' + whomToGreet + '!';
    }

    public method greet (): String
    {
        return greeting;
    }
}

function main ()
{
    var greeter := Greeter('world);

    greeter.greet();
}
```

## Accessors

### Default

Class members are private by default.

### Private

If a member is marked as "private"  it is only accessible from inside the class.

### Public

If a member is marked as "public" it is accessible from inside as well as from outside the class.
