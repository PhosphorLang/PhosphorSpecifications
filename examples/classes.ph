import 'console';

static class Math
{
    public static add (a: Int, b: Int): Int
    {
        var result := a + b;

        return result;
    }
}

class Counter
{
    private counter: Int
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

function main (arguments: String[]): Int
{
    var sum := Math.add(2, 4);

    var counter := new Counter();

    counter.increment();

    var result := sum + counter.value;

    return result;
}
