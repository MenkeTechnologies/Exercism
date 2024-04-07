-- Schema: CREATE TABLE "allergies" ("task" TEXT, "item" TEXT, "score" INT NOT NULL, "result" TEXT);
-- Task: update the bob allergies and set the result based on the task.
--       - The `allergicTo` task expects `true` or `false` based on the `score` and the `item` fields.
--       - For the `list` task you have to write corresponding items to the result field

CREATE TABLE allergens(item TEXT, code INTEGER);

INSERT INTO allergens (item, code) VALUES
    ('eggs', 1),
    ('peanuts', 2),
    ('shellfish', 4),
    ('strawberries', 8),
    ('tomatoes', 16),
    ('chocolate', 32),
    ('pollen', 64),
    ('cats', 128);

UPDATE allergies
SET result = (
            SELECT CASE WHEN allergies.score & code > 0 THEN 'true' ELSE 'false' END
            FROM  allergens
            WHERE allergies.item == item
        )
WHERE task == 'allergicTo';

UPDATE allergies
SET result = (
            SELECT CASE score WHEN 0 THEN '' ELSE group_concat(item, ', ') END
            FROM allergens
            WHERE allergies.score & code > 0
        )
WHERE task == 'list';
