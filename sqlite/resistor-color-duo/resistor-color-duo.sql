-- Schema: CREATE TABLE "color_code" ("color1" TEXT, "color2" TEXT, "result" INT);
-- Task: update the color_code table and set the result based on the two colors.

CREATE TABLE bands (color TEXT, code INT);
INSERT INTO bands (color, code) VALUES
    ('black', 0), ('brown', 1), ('red', 2), ('orange', 3), ('yellow', 4),
    ('green', 5), ('blue', 6), ('violet', 7), ('grey', 8), ('white', 9);

UPDATE color_code
SET result = b1.code || b2.code
FROM bands AS b1, bands AS b2
WHERE b1.color = color_code.color1 AND b2.color = color_code.color2;

