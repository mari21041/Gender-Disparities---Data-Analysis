use gender_disparity;

-- EDUCATION INDICATORS
WITH edu_inds AS (
  SELECT indicator_id, name
  FROM indicator
  WHERE LOWER(REPLACE(name, '_', ' ')) IN (
    'expected years of schooling',
    'mean years of schooling',
    'inequality in education'
  )
)
SELECT
  c.name                                   AS country,
  YEAR(y.year_id)                           AS yr,
  i.name                                    AS indicator,
  MAX(CASE WHEN s.description='male'   THEN NULLIF(cyi.value,0) END)   AS male_value,
  MAX(CASE WHEN s.description='female' THEN NULLIF(cyi.value,0) END)   AS female_value
FROM country_year_indicator cyi
JOIN country   c ON c.country_id   = cyi.country_id
JOIN year      y ON y.year_id      = cyi.year_id
JOIN indicator i ON i.indicator_id = cyi.indicator_id
JOIN sex       s ON s.sex_id       = cyi.sex_id
JOIN edu_inds  ei ON ei.indicator_id = i.indicator_id
GROUP BY c.name, YEAR(y.year_id), i.name
ORDER BY country, indicator, yr;


SELECT indicator_id, name
FROM indicator
WHERE name LIKE 'Inequality in edu%';

UPDATE indicator
SET name = 'Inequality in education'
WHERE name = 'Inequality in eduation';

