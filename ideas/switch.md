# Switch statements

```phosphor
switch <expression>
{
    case <compile time value>:
        <statements>
    case <compile time value>:
    {
        <statements>
    }
    else:
        <statements>
}
```

```phosphor
switch <expression>
{
    case <compile time value>:
        <statements>
        fallthrough;
    case <compile time value>:
        <statements>
}
```

```phosphor
switch <expression>
{
    case <compile time value>, <compile time value>, <compile time value>:
        <statements>
    else:
        <statements>
}
```

Cool wäre auch, Bereiche angeben zu können wie:

```phosphor
switch <expression>
{
    case 1:
        <statements>
    case 4 - 8:
        <statements>
    else:
        <statements>
}
```

Or even if arbitrary expressions were allowed everywhere, which would make it a more readable version of a lot of if-statements.

## Future ideas

Perhaps, to a certain extent, Rust's match expressions could be used as an inspiration?
