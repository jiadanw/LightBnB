-- id, title, start_date, and cost_per_night
-- Select all columns from the properties table, and the average rating for each property.
-- Order the results from lowest cost_per_night to highest cost_per_night.
-- Limit the number of results to 10.
-- Only show listings that have a rating >= 4 stars.
SELECT properties.id, title, cost_per_night, avg(rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id = property_id
GROUP BY properties.id
HAVING avg(rating) >= '4';
