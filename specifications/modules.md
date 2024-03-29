# Modules

## Overview

```phosphor
public module Standard.Io;

public header function readLine (): String;
public header function writeLine (text: String);
```

```phosphor
class MyProgramme.Network.Connection;
```

```phosphor
module Main;

import Standard.Io;
import MyProgramme.Network;
import MyProgramme.Network.Connection;

public function main ()
{
    Io.writeLine('Hello world!');
    MyIo.writeLine('Hello world!');

    let networkConnection = new Network.Connection();
    let myNetworkConnection = new MyNetwork.Connection();
}
```

## Module

Each file contains a module. It is defined by a name, which is optionally preceded with a namespace. \
Classes are special types of modules (with the main difference in being instantiable). \

## Namespace

Namespaces can consist of one or several levels (example: `MyProgramme.Utility.Math`). \
The top-level namespace is the first of these levels (here: `MyProgramme`). \

## Import

If a module is imported with name and namespace (e.g. `import Standard.Io;`), the module is included with its name in the current namespace (here as `Io`). Alternatively, another name for the module can be specified with `as` (e.g. `import MyProgramme.Io as MyIo;`). In this case, the module with the specified name is included in the current namespace (here as `MyIo`). Thus name conflicts can be avoided. \
If a namespace is imported, it can be used as a name the same way as a module (e.g. `import MyProgramme.Network;` allows the use of `Network.Connection`). \
The exact paths and the file system are irrelevant for importing. The compiler automatically searches all relevant files for the imported modules. It would be possible that it gets the file with the module `Main` and searches all files in the same or deeper directories. Alternatively, a directory could be passed (default: the current working directory) and the compiler would search for the module `Main` in this directory and all subdirectories on its own. Furthermore, in both cases it could be possible to specify additional search paths.

## Language Namespaces

There are two language related namespaces: `Phosphor` and `Standard`. \
The module `Phosphor` contains all elements that are necessary for the language itself. It must be provided by the compiler. \
The module `Standard` is provided by the standard library, which is optional but recommended in most cases.
