Code requirements:
Project must contain Gemfile/Gemfile.lock with installed Rubocop and Fasterer. Ideally, the project has zero number of error/warnings after lintering.
Project must have a  hierarchy. Don't put all files in the root of the project. 
Intentations and “pretty” view of a code
Project must have Pull Request on Git repository opened
All branches/commits/modules/classes/methods/variables/files should be named correctly

1. top_book takes to arguments the instance of Library class and the count of most popular books (default value 1).top_reader return the array with list of top books (instance of Book class) with descending order, so we can use structure like:
top_books.map(&:title).join(',')
and take the title of each book that we find.

2. top_reader work the same algorithm like top_book but return the array with list of top users (who takes the most number of books), so we can use structure like:
top_readers.map(&:name).join(',')
and take the name of each person.

3. count_of_top_taken_books at firs use previous method top_book than use taken values for comparing inside orders for each user, then return count uniq matches.

The library contain “seed” (root) file where is demonstrated how work library.