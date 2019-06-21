# frozen_string_literal: true

class Author
  attr_reader :name, :biograph

  def initialize(name, biograph = '')
    @name = name.to_s
    @biograph = biograph
  end
end
