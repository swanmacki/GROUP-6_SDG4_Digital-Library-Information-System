
CREATE PROCEDURE borrow_book (
    IN p_member_id INT,
    IN p_book_id INT,
    IN p_days INT
)
BEGIN
    INSERT INTO borrowings (member_id, book_id, borrow_date, due_date)
    VALUES (
        p_member_id,
        p_book_id,
        CURDATE(),
        DATE_ADD(CURDATE(), INTERVAL p_days DAY)
    );
END$$

CREATE PROCEDURE return_book (
    IN p_borrowing_id INT
)
BEGIN
    UPDATE borrowings
    SET return_date = CURDATE()
    WHERE borrowing_id = p_borrowing_id
    AND return_date IS NULL;
END$$

DELIMITER ;
