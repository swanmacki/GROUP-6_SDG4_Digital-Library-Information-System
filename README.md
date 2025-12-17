# GROUP-6_SDG4_Digital-Library-Information-System
## Project Description
The Digital Library Information System (DLIS) is a database-driven system designed to support
public and community libraries in providing equal and inclusive access to learning materials.

The system enables libraries to:
- Organize and manage book and material records
- Track borrowing and returning transactions
- Monitor item availability in real time
- Generate reports to support informed library management decisions

This project directly supports **United Nations SDG 4 – Quality Education**, specifically:
- SDG 4.1: Ensure inclusive and equitable quality education for all
- SDG 4.3: Increase access to affordable learning resources
- SDG 4.5: Reduce inequalities in access to education

Core DBMS concepts applied in this project include:
- Entity-Relationship (ER) modeling and normalization
- Primary keys, foreign keys, and integrity constraints
- Stored procedures, functions, and triggers
- Transaction management for borrowing and returning books
- Role-based access control using DCL statements

Usage Instructions:
-- The system receives the member ID, book ID, and number of borrowing days, and then starts a transaction to make
sure all steps are done safely together. It checks if the requested book has available copies using a
locked selection to prevent other changes at the same time. If no copies are available, the system stops
and shows an error. If copies are available, the system adds a record to the Borrowings table and
reduces the number of available copies in the Inventory by one. Finally, the transaction is committed,
saving all changes permanently and keeping the data accurate. This process ensures that borrowing is
safe, consistent, and free from errors or data
conflicts. --

--

MEMBERS AND CONTRIBUTIONS:
- CASTILLO, JAKE LAWRENCE - Normalization 3NF/BCNF
- MAMAYSON, JOHN MICHAEL - Complex DQL
- MALAZARTE, KEVINCE LEE – TRIGGER, STORED PROCEDURE
- SORIANO, MARK LEEROY - ERD/FLOWCHART
