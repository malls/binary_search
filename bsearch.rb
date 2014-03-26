require 'rubygems'
require 'pry-debugger'
module ArrayUtil
  def self.bsearch(array, element)
    if array.count && array.count > 0
      self._bsearch(array, element, 0, array.count - 1)
    else
      false
    end
  end

  def self._bsearch(array, element, start_index, end_index)
    # If the start and end indeces are the same, search
    # that element and return
    #
    # Otherwise, find the midpoint
    #   midpoint = start_index + (end_index - start_index) / 2
    #
    # If the element is greater than the one at midpoint, call
    #   _bsearch on the right half of the remaining array
    # Otherwise, call _bsearch on left half of the remaining array

    midex = (end_index + start_index) / 2

    if midex == start_index
      if array[midex] == element
        return true
      else
        return false
      end
    end

    if element == array[midex] 
      return true
    elsif element > array[midex]
      self._bsearch(array, element, midex, end_index)
    elsif element < array[midex]
      self._bsearch(array, element, start_index, midex)
    end

  end
end
