CREATE TABLE e
(
	e VARCHAR(1)
)

INSERT INTO e(e) VALUES('e')

SELECT
	e.e e, 
	ee.e ee,
	eee.e eee,
	eeee.e eeee
FROM e e 
JOIN e ee ON e.e = ee.e
CROSS APPLY(SELECT e FROM e WHERE ee.e = e) eee
LEFT JOIN e eeee ON ee.e = eeee.e
RIGHT JOIN e eeeee ON ee.e = eeeee.e
WHERE e.e = 'e'
