CREATE TABLE IF NOT EXISTS users (id INT PRIMARY KEY, name TEXT, email TEXT);

INSERT INTO
  users (id, name, email)
VALUES
  (1, 'John Doe', 'john@example.com');

INSERT INTO
  users (id, name, email)
VALUES
  (2, 'Jane Doe', 'jane@example.com');

SELECT
  *
FROM
  users;

DELETE FROM users
WHERE
  id = 1;

-- Remove user with id 1
UPDATE users
SET
  email = 'jane.doe@example.com'
WHERE
  id = 2;
