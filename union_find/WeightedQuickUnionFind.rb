class WeightedQuickUnionFind

  attr_reader :sizes, :roots, :count

  # Sizes holds the number of objects
  # in the subtree at each root
  # sizes[i] = objects in subtree with root i
  # Roots holds the parent of each object

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

end

