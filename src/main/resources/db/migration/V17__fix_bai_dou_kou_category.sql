-- V17: fix drugs assigned to duplicate aromatic category (id=46, ASCII apostrophe)
-- instead of the existing one (typographic apostrophe, id=25).
-- IDs are stable: both categories were created deterministically by prior migrations.

UPDATE drugs SET category_id = 25 WHERE category_id = 46;

DELETE FROM drug_category WHERE id = 46;
