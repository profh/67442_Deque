# Deque

Deque (pronounced 'deck') is a generalized queue where it is possible to push or pop from either the front or the back. (Just like drawing cards from the top or bottom of a deck.)  Unlike a queue (which is always FIFO), we could place things in any order we desire.  TBH, this is generally not as useful as a stack or a queue because we can't know if it's FILO or FIFO or neither. (The point here is to work with a data structure and learn some things about generics and testing, even if it's not too important of a structure.)

In terms of testing, there are really two approaches and each has value.  The first is to test the structure with different sizes.  Definitely need to test an empty deque, but also good to test a deque with only one element and another with multiple elements (two or more; we do three in our tests). While testing these different size structures we systematically try to test the full range (as possible) of methods the structure allows.  In this way, we know that all methods in the structure work and that the structure works for many sizes.

A second approach is to test each method in the structure separately as is often done in unit testing. The advantage here is independence and being sure that coverage is complete.  TBH the examples here do pool some functions together instead of each one tested separately, but the spirit of those tests follows the intent and that's fine for now.

As a further test (just to verify the generics working appropriately), test set 1 uses a deque of integers while test set 2 uses a deque of strings.  Both work fine.

Qapla'

Prof. H