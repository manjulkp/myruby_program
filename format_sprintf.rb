puts "%05d" % 123

# "%05d" is a string used to format the argument 123
#
# 0 pad with zeros
#
# 5 The width specifies the minimum number of characters that will be written to
# the result for this field.
#
# d Convert argument as a decimal number
#
# % is the operator http://ruby-doc.org/core-2.2.0/String.html#method-i-25
#
# 123 is the argument
#
# This line formats the argument 123 to 5 digit width using 0 to fill it out.
#
# => 00123



What else could the padding be?

The default padding is a space

puts "%05d" % 123
=> "00123"

str = puts "%5d" % 123
=> " 123"

str.length
=> 5

    Can you format for binary, hexadecimal, octal?

Yes

"%05b" % 123
=> "1111011" (binary)

"%05x" % 123
=> "0007b" (hexadecimal)

"%05o" % 123
=> "00173" (octal)

    Does this also manage formatting strings?

No, unless a number as a string

"%05d" % "123"
=> "00123"

"%05d" % "onetwothree"

`ArgumentError: invalid value for Integer(): "onetwothree"


One of my favorite forms of this is using a hash and using the key names for the place holders and the value for the formatted value...

    my_stats = { name: 'Victor', age: 47, weight: '70 Kg', height: '1.8m'}
    report_string =
      "%<name>s is %<age>i years old and is %<height>s tall and weighs %<weight>s."
    puts report_string % my_stats

Edit after posting and sending out, sorry.

The answer is "Yes" for managing formatting strings as well. What are the options for formatting strings? Where are you getting the documentation from?