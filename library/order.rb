# frozen_string_literal: true

class Order
  attr_reader :reader, :book

  def initialize(book, reader)
    @book = book
    @reader = reader
    @date = Time.now
  end
end
