# frozen_string_literal: true

require 'yaml'

autoload :Author, './library/author'
autoload :Book,   './library/book'
autoload :Order,  './library/order'
autoload :Reader, './library/reader'

class Library
  attr_reader :books, :orders, :readers, :authors

  current_path = File.dirname(__FILE__)

  FILE_PATH = current_path + '/../data/data.yml'

  def initialize
    @books = []
    @orders = []
    @readers = []
    @authors = []
  end

  def add_data(*data)
    data.each do |elem|
      case elem
      when Book then @books.push(elem)
      when Author then @authors.push(elem)
      when Reader then @readers.push(elem)
      end
    end
  end

  def add_orders(book, reader)
    @orders.push(Order.new(book, reader)) if book.is_a?(Book) && reader.is_a?(Reader)
  end

  def top_reader(lib, readers = 1)
    top_read = lib.orders.map(&:reader)
    top_read_sort = top_read.each_with_object(Hash.new(0)) { |i, h| h[i] += 1; }
    top_read_sort.sort_by { |_k, v| v }.reverse.to_h.keys.take(readers)
  end

  def top_book(lib, books = 1)
    top_book = lib.orders.map(&:book)
    top_book_sort = top_book.each_with_object(Hash.new(0)) { |i, h| h[i] += 1; }
    top_book_sort.sort_by { |_k, v| v }.reverse.to_h.keys.take(books)
  end

  def count_of_top_taken_books(lib, coun_popular_books = 1)
    top_books = top_book(lib, coun_popular_books)
    result = orders.select do |order|
      order.reader if top_books.include? order.book
    end
    result.uniq.length
  end

  def save
    File.write(FILE_PATH, to_yaml)
  end

  def self.load
    return unless File.exist? FILE_PATH

    YAML.load_file(FILE_PATH)
  end
end
