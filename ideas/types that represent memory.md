# Types that represent memory <!-- omit in toc -->

The title is a bit of a misnomer. It's about how different types, especially arrays, represent memory, or how different representations of memory in Phosphor look like.

There are the following points:
- [Memory up to word length](#memory-up-to-word-length)
- [Memory of known size with homogeneous parts](#memory-of-known-size-with-homogeneous-parts)
- [Memory of known size with heterogeneous parts.](#memory-of-known-size-with-heterogeneous-parts)
- [Memory of unknown size](#memory-of-unknown-size)
- [Memory of dynamic size](#memory-of-dynamic-size)
- [The structure of strings](#the-structure-of-strings)

## Memory up to word length

Solution: Primitive types

- Integer
- Float
- Boolean

## Memory of known size with homogeneous parts

The size of the memory is known at compile time and does not change. \
The individual parts of the memory all have the same type (and thus the same size).

In short: unchanging, known, homogeneous.

Solution: Vector (formerly: array of defined size)

## Memory of known size with heterogeneous parts.

The size of the memory is known at compile time and does not change. \
The individual parts of the memory have different types (and thus potentially different sizes).

In short: unchanging, known, heterogeneous.

Solution: Class

## Memory of unknown size

The size of the memory is only known at runtime and does not change. \
The individual parts of the memory all have the same type (and thus the same size).

In short: unchanging, unknown, homogeneous.

Solution: Array (formerly: array of unknown size), size as part of the data: { size: UInt, data: Int8[] }

## Memory of dynamic size

The size of the memory is only known at runtime and can change. \
The individual parts of the memory all have the same type (and thus the same size).

Short: changeable, unknown, homogeneous

Solution: List

## The structure of strings

Maybe something like:
class String extends Array(UInt8) { ... }
