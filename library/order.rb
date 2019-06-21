# frozen_string_literal: true

require_relative 'reader'
require_relative 'book'

class Order
  attr_reader :reader, :book

  def initialize(book, reader)
    @book = book
    @reader = reader
    @date = Time.now
  end
end
