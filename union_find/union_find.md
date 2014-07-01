## Quick Union / Union Find

### Motivation
Connect two objects, and find whether there is a path containing the two objects.

This is useful in many applications where it is necessary to find out whether two items are connected through a path. With a proper algorithm, even for a set of a billion objects (1 * 10^9), the worst case time can be reduced to something on the order of N*logN time.

The implementation of this algorithm is a weighted quick union (weighted by number of objects).






