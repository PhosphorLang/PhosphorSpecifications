import console;

class Math ()
{
    constructor ()
    {
        // Is called by "let math := new Math();".
    }

    destructor ()
    {
        // Is called by "delete math;" or when "math" leaves the scope.
        // Alternatively, the last usage of the variable instead of scope leave could be the point of destruction.
    }

    public sum (a: Integer, b: Integer): Integer
    {
        let result := a + b;

        return result;
    }

    public isEqual (a: Integer, b: Integer): Boolean
    {
        let result := a = b;

        return result;
    }
}

class Main
{
    private testNumber: Integer;
    private isTest := true; // Automatic type determination by the initialisation.
    private testFloat: Float64 := 1; // Optional explicit type definition to overwrite the automatic determination.

    constructor ()
    {
        let math := new Math(); // "let" with automatic type determination by the initialisation.

        testNumber := math.sum(2, 3); // Class members must either be initialised when defined or inside the constructor.

        Console.writeLine(sum);

        let n: Integer; // If there is no initialisation, the type must be explicitely defined.

        n := 5;
    }
}

function main ()
{
    new Main();
}
