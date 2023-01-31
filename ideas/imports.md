# Imports

With an import statement, another Phosphor source file can be imported as it was part of the current source file or within a namespace.

## Language library import

```phosphor
import 'io';
```

This will import the module "io" from the standard library.

## Relative file import

```phosphor
import './fileName.ph';
```

This will import the file "fileName.ph" from the same folder as the source file.

```phosphor
import '../fileName.ph';
```

This will import the file "fileName.ph" from the parent folder of the source file.

```phosphor
import '/fileName.ph';
```

This will import the file "fileName.ph" from the root folder of the project (where the main file lies).

## Namespaced file import

```phosphor
import './fileName.ph' as NamespaceName;
```
This will import the file "fileName.ph" from the same folder as the source file. Only the identifier "NamespaceName" will be available in
the source file. All identifiers from "fileName.ph" will be accessible as properties of the identifier "NamespaceName".

Example usage:

```phosphor
import './console.ph' as Console;

Console.writeLine('Hello world!');
```
