# frozen_string_literal: true

autoload :Library, './library/library'

library = Library.load || Library.new

author1 = Author.new('aut_name1')

book1 = Book.new(author1, 'title1')

user1 = Reader.new(name: 'name_reader1', email: 'email1', city: 'city1')

library.add_data(user1, book1, author1)

library.add_orders(book1, user1)

library.count_of_top_taken_books(library, 3)

library.save
