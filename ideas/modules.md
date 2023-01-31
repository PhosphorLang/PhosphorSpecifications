# Modules

## Overview

```phosphor
module Standard.Io;

export external function readLine (): String;
export external function writeLine (text: String);
```

```phosphor
module MyProgramme.Specials;

export import Standard.Io;
export import Standard.String as RenamedString;
```

```phosphor
module MyProgramme.Network.Connection;

export direct class
{
    // ...
}
```

```phosphor
module Main;

import Standard.Io;
import MyProgramme.Io as MyIo;
import MyProgramme.Network.Connection;
import MyProgramme.Specials;

export function main ()
{
    Io.writeLine('Hello world!');
    MyIo.writeLine('Hello world!');
    Specials.Io.writeLine('Hello world!');

    var connection = new Connection();
}
```

## Idea

Each file contains a module. It is defined by a name and an optionally prefixed namespace. The namespace can itself consist of several levels (example: `MyProgramme.Utility.Math`). \
Modules can be imported by their name. \
The exact paths and the file system are irrelevant for programming. The compiler automatically searches all relevant files for the imported modules. It would be possible that it gets the file with the module `Main` and searches all files in the same or deeper directories. Alternatively, a directory could be passed (default: the current working directory) and the compiler would search for the module `Main` in this directory and all subdirectories on its own. Furthermore, in both cases it could be possible to specify additional search paths.

## Import

If a module is imported with name and namespace (e.g. `import Standard.Io;`), the module is included with its name in the current namespace (here as `Io`). Alternatively, another name for the module can be specified with `as` (e.g. `import MyProgramme.Io as MyIo;`). In this case, the module with the specified name is included in the current namespace (here as `MyIo`). In this way, name conflicts can be avoided.

## Export

Modules can export elements from their namespace. This is done with the keyword `export` which is placed in front. Imports can be re-exported in the same way. \
Direct exports using `export direct` result in the directly exported element being included in the import rather than the module itself. The element is given the name of the module and is not explicitly specified (e.g. `export direct class`).
