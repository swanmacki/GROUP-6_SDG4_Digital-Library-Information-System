INSERT INTO categories (category_name) VALUES
('Technology'),
('Mathematics'),
('Literature'),
('Health'),
('Education'),
('Science'),
('Languages'),
('Environment'),
('Social Studies'),
('History');

INSERT INTO members (full_name, address) VALUES
('Juan Miguel Santos', 'Quezon City'),
('Maria Angelica Reyes', 'Manila'),
('Christian Angelo Cruz', 'Cebu City'),
('Ronan Luis Dela Cruz', 'Davao City'),
('Julia Mae Villanueva', 'Laguna'),
('Sophia Anne Bautista', 'Batangas'),
('Rica Danielle Ramos', 'Cavite'),
('Daniel Joseph Lim', 'Makati'),
('Joshua Mark Tolentino', 'Bulacan');

INSERT INTO books (title, author, category_id, publication_year, isbn) VALUES
('Technology in the Modern World', 'A. Dela Cruz', 1, 2020, '978-001'),
('Advanced Mathematics I', 'R. Santos', 2, 2019, '978-002'),
('Filipino Short Stories', 'L. Reyes', 3, 2018, '978-003'),
('Community Health Basics', 'M. Lopez', 4, 2021, '978-004'),
('Foundations of Education', 'J. Ramos', 5, 2017, '978-005'),
('Computer Literacy', 'C. Lim', 1, 2022, '978-006'),
('General Biology', 'S. Cruz', 6, 2020, '978-007'),
('Algebra for Beginners', 'P. Tolentino', 2, 2016, '978-008'),
('English Grammar Essentials', 'D. Bautista', 7, 2019, '978-009'),
('Environmental Awareness', 'E. Villanueva', 8, 2021, '978-010');

INSERT INTO inventory (book_id, total_copies, available_copies) VALUES
(1, 3, 1),
(2, 2, 1),
(3, 2, 1),
(4, 1, 0),
(5, 1, 0),
(6, 2, 1),
(7, 2, 1),
(8, 1, 0),
(9, 1, 0),
(10, 1, 0);

INSERT INTO borrowings (member_id, book_id, borrow_date, due_date, return_date) VALUES
(1, 1, '2024-02-20', '2024-03-05', '2024-03-01'),
(2, 1, '2024-03-01', '2024-03-16', NULL),
(3, 6, '2024-03-08', '2024-03-17', NULL),
(4, 2, '2024-03-05', '2024-03-20', NULL),
(5, 7, '2024-03-10', '2024-03-24', NULL),
(6, 10, '2024-03-15', '2024-04-01', NULL),
(7, 4, '2024-03-10', '2024-03-28', NULL),
(8, 5, '2024-03-12', '2024-03-30', NULL),
(9, 9, '2024-03-12', '2024-03-27', NULL);
