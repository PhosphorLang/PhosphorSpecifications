# Data Types

## Signed Integer

    Integer        Platform dependend signed integer (1, 2, 4 or 8 Byte)
    Integer8       1 Byte signed integer (>= -128, <= 127)
    Integer16      2 Byte signed integer (>= -32768, <= 32767)
    Integer32      4 Byte signed integer (>= -2147483648, <= 2147483647)
    Integer64      8 Byte signed integer (>= -9223372036854775808, <= 9223372036854775807)

## Unsigned Integer

    Cardinal       Platform dependend unsigned integer (1, 2, 4 or 8 Byte)
    Cardinal8      1 Byte unsigned integer (>= 0, <= 255)
    Cardinal16     2 Byte unsigned integer (>= 0, <= 65535)
    Cardinal32     4 Byte unsigned integer (>= 0, <= 4294967295)
    Cardinal64     8 Byte unsigned integer (>= 0, <= 18446744073709551615)

## Floating Point

    Float          Platform dependend floating point number (2, 4 or 8 Byte)
    (Float16)      2 Byte floating point number (IEEE 754 half precision format)
    Float32        4 Byte floating point number (IEEE 754 single precision format)
    Float64        8 Byte floating point number (IEEE 754 double precision format)

## Boolean

    Boolean        1 Byte truth value (false = 0, true = 255)
    (Boolean16)    2 Byte truth value (false = 0, true = 65535)
    (Boolean32)    4 Byte truth value (false = 0, true = 4294967295)
    (Boolean64)    8 Byte truth value (false = 0, true = 18446744073709551615)

## String

    String      Character sequence with variable length
