class WeightedQuickUnionFind

  attr_reader :sizes, :roots, :count

  # Sizes holds the number of objects
  # in the subtree at each root
  # sizes[i] = objects in subtree with root i
  # Roots holds the parent of each object
  # Count stores the number of trees:
  # at initialization the number is equal
  # to N because all nodes are orphans
  # if all nodes are connected, count should equal 1

  def initialize(n)
    # TODO: catch if count is not an integer
    @count = n
    @sizes = Array.new(count)
    @roots = Array.new(count)

    (0..n).each do |x|
      # set roots to itself since all nodes are orphans
      roots[x] = x
      sizes[x] = 1
    end
  end

  # finds the root node for N:
  # while a node is not a root node
  # go up the tree until n is a root node,
  # i.e. its root is itself, then return n
  def find(n)
    while n != roots[n]
      n = roots[n]
    n
  end

  # check if two elements are connected
  # returns true if the two elements have the
  # same root node
  def connected(x, y)
    find(x) == find(y)
  end

  def union(x, y)
    root_x = find(x)
    root_y = find(y)
    return if root_x == root_y
    # point smaller root to larger root
    # this helps minimize the size of the tree
    if sizes[root_x] < sizes[root_y]
      roots[root_x] = root_x
      sizes[root_y] += sizes[root_x]
    else
      roots[root_y] = roots[root_x]
      sizes[root_x] += sizes[root_y]
    end
    # decrement count if the roots of the
    # two objects were not the same
    count -= 1
  end

end

