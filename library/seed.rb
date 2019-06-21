# frozen_string_literal: true

require_relative 'library'

@author1 = Author.new('aut_name1')
@author2 = Author.new('aut_name2')

@book1 = Book.new(@author1, 'title1')
@book2 = Book.new(@author1, 'title2')
@book3 = Book.new(@author1, 'title3')
@book4 = Book.new(@author1, 'title4')

@user1 = Reader.new(name: 'name_reader1', email: 'email1', city: 'city1', street: 'street1', house: 'house1')
@user2 = Reader.new(name: 'name_reader2', email: 'email1', city: 'city1', street: 'street1', house: 'house1')
@user3 = Reader.new(name: 'name_reader3', email: 'email1', city: 'city1', street: 'street1', house: 'house1')

@user_order1 = Order.new(@book1, @user1)
@user_order2 = Order.new(@book2, @user1)
@user_order3 = Order.new(@book2, @user2)
@user_order4 = Order.new(@book2, @user3)
@user_order5 = Order.new(@book1, @user2)
@user_order6 = Order.new(@book3, @user1)

library = Library.load
library.save

library.add_data(@user_order6, @user3, @book3, @author2)
library.add_orders(@book1, @user2)

library.top_reader(library, 1)
library.top_book(library, 1)
library.count_of_top_taken_books(library, 3)