USE world;

#1
-- SELECT COUNT(CountryCode) FROM city WHERE countrycode='USA';
#2
-- SELECT Population, LifeExpectancy FROM country WHERE name = 'Argentina';
#3
-- SELECT `Name`, LifeExpectancy FROM country WHERE LifeExpectancy IS NOT NULL ORDER BY LifeExpectancy DESC LIMIT 1;
#4 
-- SELECT ci.name FROM country co
-- JOIN city ci ON co.`code`=ci.CountryCode
-- WHERE co.name="Spain" AND capital=id;
#5
-- SELECT DISTINCT `language` AS distinct_language FROM country co 
-- JOIN countrylanguage col ON co.`code`=col.countrycode
-- WHERE region = 'Southeast Asia';
#6
-- SELECT `name` FROM city WHERE `name` LIKE 'F%' LIMIT 25;
#7
-- SELECT COUNT('name') AS number_cities_china FROM country co
-- JOIN city ci ON co.`code`=ci.CountryCode
-- WHERE `Code`='CHN';
#8
-- SELECT `Name` AS country_with_lowest_population, population FROM country WHERE Population IS NOT NULL ORDER BY Population ASC LIMIT 1;
#9
-- SELECT COUNT(DISTINCT`name`) AS number_of_countries_in_database FROM country;
#10
-- SELECT `name`, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 10;
#11
-- SELECT ci.`name`, ci.population FROM country co
-- JOIN city ci ON co.`code`=ci.CountryCode
-- WHERE co.`name`='Japan'
-- ORDER BY population DESC LIMIT 5;
#12
-- UPDATE country
-- SET HeadOfState = 'Elizabeth II'
-- WHERE HeadOfState = 'Elisabeth II';
-- SELECT `name`, `code` 
-- FROM country 
-- WHERE HeadOfState = 'Elizabeth II';
#13
-- SELECT `name`, Population/SurfaceArea FROM country 
-- WHERE Population/SurfaceArea IS NOT NULL AND Population/SurfaceArea > 0
-- ORDER BY Population/SurfaceArea ASC LIMIT 10;
#14
-- SELECT DISTINCT `Language` FROM countrylanguage;
#15
-- SELECT `name`, GNP FROM country ORDER BY GNP DESC LIMIT 10;
#16
-- SELECT co.`name`, COUNT('languages') AS number_languages FROM country co
-- JOIN countrylanguage col ON co.`code`=col.CountryCode
-- GROUP BY co.`name`
-- ORDER BY number_languages DESC LIMIT 10;
#17
-- SELECT co.`name` AS country_speaks_german FROM country co
-- JOIN countrylanguage col ON co.`code`=col.CountryCode
-- WHERE `Language` = 'German' AND Percentage > 50;
#18
-- SELECT `name` AS country_with_worst_life_expectancy, LifeExpectancy FROM country
-- WHERE LifeExpectancy IS NOT NULL
-- ORDER BY LifeExpectancy ASC LIMIT 1;
#19
-- SELECT GovernmentForm, COUNT(GovernmentForm) AS frequency_of_form FROM country
-- GROUP BY GovernmentForm
-- ORDER BY frequency_of_form DESC LIMIT 3;
#20
-- SELECT count(`Name`) FROM country
-- WHERE IndepYear IS NOT NULL;



