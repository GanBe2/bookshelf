CREATE TABLE `schema_migrations`(`filename` varchar(255) NOT NULL PRIMARY KEY);
CREATE TABLE `books`(
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL
);
INSERT INTO schema_migrations (filename) VALUES
('20261106105542_create_books.rb');
