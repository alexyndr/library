# frozen_string_literal: true

class Author
  def initialize(name, biography = '')
    @name = name.to_s
    @biography = biography
  end
end
