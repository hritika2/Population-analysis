-- Country with the highest population
SELECT Country, population FROM world_population_2015 WHERE population = (SELECT MAX(population) FROM world_population_2015);  

-- Country with the lowest population
SELECT country, population FROM world_population_2015 WHERE population = (SELECT MIN(population) FROM world_population_2015);

-- How many countries are there?
SELECT COUNT(DISTINCT(country)) AS total_countries FROM world_population_2015;

-- Top 10 countries in the world according to area
SELECT country, area FROM world_population_2015 ORDER BY area DESC LIMIT 10;

-- Country with the highest migration rate
SELECT country, migration_rate FROM world_population_2015 ORDER BY migration_rate DESC LIMIT 1;

-- Country with the highest birth rate
SELECT country, birth_rate FROM world_population_2015 ORDER BY birth_rate DESC LIMIT 1;

-- Country with the highest death rate 
SELECT country, death_rate FROM world_population_2015 ORDER BY death_rate DESC LIMIT 1;

-- Top 10 countries with the highest population growth
SELECT country, population_growth FROM world_population_2015 ORDER BY population_growth DESC LIMIT 10;  

-- Countries that starts with 'i'
SELECT country FROM world_population_2015 WHERE country LIKE 'i%';

-- Countries that have 'island' in their name
SELECT country FROM world_population_2015 WHERE country LIKE '%island%';
