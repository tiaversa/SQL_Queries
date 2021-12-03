-- To discuss with Anderson
-- What is the percentage of republicans and of democrats in favor of the el-salvador-aid?
WITH vote_total AS (SELECT Class, COUNT(*) AS total_party FROM vote_data GROUP BY 1),
	 vote_el_salvador AS (SELECT Class, COUNT(*) AS el_salvador_total FROM vote_data WHERE el_salvador_aid = 'y' GROUP BY 1)
     SELECT t.CLass, t.total_party, s.el_salvador_total,  s.el_salvador_total/t.total_party*100 AS percentage
		FROM vote_el_salvador s 
		JOIN vote_total t ON t.Class = s.Class; -- Don't forget the relationship


-- Rank the projects by it's likebility from politicians.
SET @row_number = 0; 
WITH f1 AS (SELECT 'handicapped_infants' AS project_name, COUNT(*) AS total_project FROM vote_data WHERE handicapped_infants = 'y' GROUP BY 1),
	f2 AS (SELECT 'water_project_cost_sharing' AS project_name, COUNT(*) AS total_project FROM vote_data WHERE water_project_cost_sharing = 'y' GROUP BY 1),
    f3 AS (SELECT 'adoption_of_the_budget_resolution' AS project_name, COUNT(*) AS total_project FROM vote_data WHERE adoption_of_the_budget_resolution = 'y' GROUP BY 1),
    data_result AS (
						SELECT * FROM f1
						UNION 
						SELECT * FROM f2
                        UNION 
						SELECT * FROM f3) -- Union for same table
		SELECT (@row_number:=@row_number + 1) AS ranking, project_name, total_project FROM data_result ORDER BY total_project DESC LIMIT 2;
SELECT * FROM vote_data;
DESC vote_data; -- Describing the table
SET @n := 0;
SELECT @n := @n +1 AS ranking, class;