<!-- Some Ruby Methods -->
Some Useful Ruby Methods


For Enumerable Module:

1.#count 
    #count :

ex 1
     "hello world".count("lo") returns five. It has matched the third, fourth, fifth, eighth, and tenth characters. Lets call this set one.

ex 2
     "hello world".count("o") returns two. It has matched the fifth and eighth characters. Lets call this set two.

ex 3
     "hello world".count("lo", "o") counts the intersection of sets one and two. The intersection is a third set containing all of the elements of set two that are also in set one. In our example, both sets one and two contain the fifth and eighth characters from the string. That's two characters total. So, count returns two.

Returns the number of items in enum through enumeration. If an argument is given, the number of items in enum that are equal to item are counted. If a block is given, it counts the number of elements yielding a true value.
(0...strand_a.length).count { |i| strng1[i] !=string2[i] }



 2. #Inject 
    Combines all elements of enum by applying a binary operation, specified by a block or a symbol that names a method or operator.
If you specify a block, then for each element in enum the block is passed an accumulator value (memo) and the element. If you specify a symbol instead, then each element in the collection will be passed to the named method of memo. In either case, the result becomes the new value for memo. At the end of the iteration, the final value of memo is the return value for the method.
If you do not explicitly specify an initial value for memo, then the first element of collection is used as the initial value of memo.
    

3. #Zip
    Takes one element from enum and merges corresponding elements from each args. This generates a sequence of n-element arrays, where n is one more than the count of arguments. The length of the resulting sequence will be enum#size. If the size of any argument is less than enum#size, nil values are supplied. If a block is given, it is invoked for each output array, otherwise an array of arrays is returned.

catch & throw:


numeric #divmod

array #shuffle 
Generate random number like RX837
@name ||= ('A'..'Z').to_a.shuffle[0,2].join + rand(100..999).to_s

don’t do it too much calculations.

end_with start_with

use && with binary on conditions and is more safe.

1 == 1.0
=> true
1.eql? 1.0
=> false

a = "foo"
b = "foo"
a == b
=> true
a.eql? b
=> true
a.equal? b
=> false
a.equal? a
=> true

Effectively:

== is the usual
(same value)

.eql? is value and class
(1 is Fixnum, 1.0 is Float)

.equal? is same object

It's actually much hairier;
see docs on class Object




# lets say you don’t want to intialize an empty array and thn use it. Solution :
temp = []
    self.each{ |n| temp << yield(n) }
temp

# use select if condition
select{ |n| yield(n) }

# else use any method which returns an array

# META PROGRAMMING

Reopening classes: Add a method named keep to Ruby's native Array class
Programmatic method invocation: Use ‘send’ to call a method by name programmatically







