module Behaivor
  class Hashable
    def to_hash
        raise NotImplementedError, "Implement this method in a child class"
    end
  end
end