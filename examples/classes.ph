import 'console';

static class Math
{
    public static add (a: Integer, b: Integer): Integer
    {
        let result := a + b;

        return result;
    }
}

class Counter
{
    private counter: Integer
    {
        public get;
    }

    public constructor ()
    {
        counter := 0;
    }

    public increment ()
    {
        counter += 1;
    }
}

function main (arguments: String[]): Integer
{
    let sum := Math.add(2, 4);

    let counter := new Counter();

    counter.increment();

    let result := sum + counter.value;

    return result;
}
