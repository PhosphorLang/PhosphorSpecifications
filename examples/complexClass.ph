import MyProgramme.BaseClass;
import MyProgramme.MyInterface;
import MyProgramme.MySecondInterface;

class MyProgramme.ComplexClass;

generics MyType, MySecondType: ThatType, constant MyConstant: Integer;
extends BaseClass[MyType];
implements MyInterface, MySecondInterface;

constant moduleConstant := 0; // Must be assigned a value at declaration. Cannot be changed.
variable moduleVariable := 0; // Must be assigned a value at declaration. Can be changed.
field fieldConstant := 0; // Must be assigned a value at declaration or in the constructor. Cannot be changed.
field variable fieldVariable := 0; // Must be assigned a value at declaration or in the constructor. Can be changed.

public function add (a: Integer, b: Integer): Integer
{
    let localConstant := 0;
    let variable localVariable := 0;

    return a + b;
}

public method count ()
{
    fieldCounter += 1;
}
