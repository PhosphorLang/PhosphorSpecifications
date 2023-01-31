# Unions

Unions are like tagged unions in other languages (or enums in Rust). They have the size of the biggest member plus the size of a tag (which indicates which member is currently active). The tag is always the first member of the union. \
While the tag should have the smallest possible size, most of the time memory alignment will make such improvements irrelevant.

## Example

```phosphor
class IpAddressVersion4
{
    ...
}

class IpAddressVersion6
{
    ...
}

union IpAddress
{
    IpAddressVersion4,
    IpAddressVersion6,
}
```

## Inspiration

The inspiration comes from the union part of Rust's enums. They are much more powerful than the example aboth and possibly offer more ideas for Phosphor's unions.
