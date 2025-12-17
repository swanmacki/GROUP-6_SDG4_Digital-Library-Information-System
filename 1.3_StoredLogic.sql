-- ROLL BACK -- 
START TRANSACTION;
CALL borrow_book(2, 5, 7);
ROLLBACK;

-- TRIGGER --
CREATE TRIGGER trg_before_borrow
BEFORE INSERT ON borrowings
FOR EACH ROW
BEGIN
    DECLARE copies INT;
    SELECT available_copies INTO copies
    FROM inventory
    WHERE book_id = NEW.book_id;

    IF copies <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Book not available';
    END IF;
END$$

CREATE TRIGGER trg_after_borrow
AFTER INSERT ON borrowings
FOR EACH ROW
BEGIN
    UPDATE inventory
    SET available_copies = available_copies - 1
    WHERE book_id = NEW.book_id;

END$$

CREATE TRIGGER trg_after_return
AFTER UPDATE ON borrowings
FOR EACH ROW
BEGIN
    IF OLD.return_date IS NULL AND NEW.return_date IS NOT NULL THEN
        UPDATE inventory
        SET available_copies = available_copies + 1
        WHERE book_id = NEW.book_id;
    END IF;
END$$

DELIMITER ;

