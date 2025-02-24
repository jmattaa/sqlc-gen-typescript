-- name: GetAuthor :one
SELECT * FROM authors
WHERE id = ? LIMIT 1;

-- name: ListAuthors :many
SELECT * FROM authors
ORDER BY name;

-- name: CreateAuthor :exec
INSERT INTO authors (
  name, bio, some_ting
) VALUES (
  ?, ?, ?
);

-- name: UpdateAuthor :one
UPDATE authors
SET name = ?, bio = ?
WHERE id = ?
RETURNING *;

-- name: DeleteAuthor :exec
DELETE FROM authors
WHERE id = ?;
