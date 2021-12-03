USE vote;
SELECT * FROM vote_data;
-- 1 - democrats / 2 - republicans
UPDATE vote_data SET class_by_num = 1;
UPDATE vote_data SET class_by_num = 2 WHERE class = 'republican';
-- testing
SELECT * FROM vote_data WHERE class != 'democrat' AND class_by_num = 1;
-- How many of the politicians that are in favor of the el-salvador-aid are also in favor of the anti-satellite-test-ban?
SELECT COUNT(person_id) FROM vote_data WHERE el_salvador_aid = 'y' AND anti_satellite_test_ban = 'y'; -- 45
-- How many republicans are in favor of duty-free-exports?
SELECT COUNT(person_id) FROM vote_data WHERE duty_free_exports = 'y' AND class_by_num = 2; -- 14
-- What is the percentage of republicans vs democrats in this dataset?
Select Class, (Count(class_by_num)* 100 / (Select Count(*) From vote_data)) as percentage
From vote_data
Group By class_by_num;


