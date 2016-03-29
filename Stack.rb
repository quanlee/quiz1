class Stack

  def initialize
    @internal_array = []
  end

  def add obj
    @internal_array.push obj
  end

  # the stack class will always remove the most recently added object first
  # First In Last Out
  def remove
    return @internal_array.pop
  end

end
