require_relative 'my_enumerable'
class MyList
  include MyEnumerable

  attr_accessor :list

  # Create initialize method
  def initialize(*list)
    @list = list
  end

  # create each method
  def each(&block)
    index = 0
    while index < @list.length
      block.call(@list[index])
      index += 1
    end
  end
end
