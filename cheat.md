# Python f-string cheat sheets

See [fstring.help](https://fstring.help/) for more examples and for a more detailed discussion of this syntax see [this string formatting article](https://www.pythonmorsels.com/string-formatting/).

## All numbers

The below examples assume the following variables:

    >>> number = 4125.6
    >>> percent = 0.3738

| Example Output | Replacement Field  | Fill | Width | Grouping | Precision | Type |
|----------------|--------------------|------|-------|----------|-----------|------|
| `'4125.60'`    | `{number:.2f}`     |      |       |          | `.2`      | `f`  |
| `'4,125.60'`   | `{number:,.2f}`    |      |       | `,`      | `.2`      | `f`  |
| `'04125.60'`   | `{number:08.2f}`   | `0`  | `8`   |          | `.2`      | `f`  |
| `' 4125.60'`   | `{number: 8.2f}`   | ` `  | `8`   |          | `.2`      | `f`  |
| `'37%'`        | `{percent:.0%}`    |      |       |          | `.0`      | `%`  |

These format specifications only work on all numbers (both `int` and `float`).


## Integers

These examples assume the following variable:

    >>> number = 9

| Example Output | Replacement Field | Alt | Fill | Width | Grouping | Type |
|----------------|-------------------|-----|------|-------|----------|------|
| `'09'`         | `{number:02d}`    |     | `0`  | `2`   |          | `d`  |
| `'  9'`        | `{number: 3d}`    |     | ` `  | `3`   |          | `d`  |
| `'9'`          | `{number:,}`      |     |      |       | `,`      |      |
| `'1001'`       | `{number:b}`      |     |      |       |          | `b`  |
| `'9'`          | `{number:x}`      |     |      |       |          | `x`  |
| `'9'`          | `{number:X}`      |     |      |       |          | `X`  |
| `'0x9'`        | `{number:#x}`     | `#` |      |       |          | `x`  |
| `'0x9'`        | `{number:#02x}`   | `#` | `0`  | `2`   |          | `x`  |
| `'000_1001'`   | `{number:08_b}`   |     | `0`  | `8`   | `_`      | `b`  |

An empty type is synonymous with `d` for integers.

These format specifications only work on integers (`int`).


## Strings

These examples assume the following variable:

    >>> string = "Python"


| Example Output           | Replacement Field | Fill Char | Align | Width |
|--------------------------|-------------------|-----------|-------|-------|
| `'              Python'` | `{string:>20}`    |           | `>`   | `20`  |
| `'Python              '` | `{string:<20}`    |           | `<`   | `20`  |
| `'       Python       '` | `{string:^20}`    |           | `^`   | `20`  |
| `'0000Python'`           | `{string:0>10}`   | `0`       | `>`   | `10`  |

These format specifications work on strings (`str`) and most other types (any type that doesn't specify its own custom format specifications).


## All objects

The below modifiers are special syntaxes supported by all object types.
Some format specifications are also included to show how to mix and match these syntaxes with the `:` syntax.

| Self-Doc | Conversion | Format Spec | Field                | Example Output     |
|----------|------------|-------------|----------------------|--------------------|
|          | `!s`       |             | `{expression!r}`     | `'Hi! ✨'`         |
|          | `!r`       |             | `{expression!r}`     | `"'Hi! ✨'"`       |
|          | `!a`       |             | `{expression!a}`     | `"'Hi! \\u2728'"`  |
|          | `!r`       | `<10`       | `{expression!r:<10}` | `"'Hi! ✨'   "`    |
| `=`      |            |             | `{expression=}`      | `"name='Trey'"`    |
| `=`      |            |             | `{expression = }`    | `"name = 'Trey'"`  |
| `=`      | `!s`       |             | `{expression=!s}`    | `"name=Trey"`      |
| `=`      |            | `.2f`       | `{expression=:.2f}`  | `'len(name)=4.00'` |

An empty conversion field is synonymous with `!s`, unless a self-documenting expression is used.
When a self-documenting expression is used, an empty conversion field uses `!r`.

See [fstring.help](https://fstring.help/) for some examples.

And see [this article on string formatting for more details](https://www.pythonmorsels.com/string-formatting/). 
