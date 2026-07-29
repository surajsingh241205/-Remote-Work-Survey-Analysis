ALTER TABLE fact_remote_work_survey
ADD CONSTRAINT fk_fact_demographics
FOREIGN KEY (response_id)
REFERENCES dim_demographics_employment(response_id);


ALTER TABLE fact_remote_work_survey
ADD CONSTRAINT fk_fact_remote_work 
FOREIGN KEY (response_id) 
REFERENCES dim_remote_work(response_id);


ALTER TABLE fact_remote_work_survey
ADD CONSTRAINT fk_fact_productivity 
FOREIGN KEY (response_id)
REFERENCES dim_productivity_preference(response_id);


ALTER TABLE fact_remote_work_survey
ADD CONSTRAINT fk_fact_barriers 
FOREIGN KEY (response_id) 
REFERENCES dim_remote_work_barriers(response_id);


ALTER TABLE fact_remote_work_survey 
ADD CONSTRAINT fk_fact_experience 
FOREIGN KEY (response_id) 
REFERENCES dim_remote_work_experience(response_id);


SELECT 
	tc.constraint_name, 
	tc.table_name, 
	kcu.column_name, 
	ccu.table_name AS referenced_table, 
	ccu.column_name AS referenced_column
FROM information_schema.table_constraints tc 
JOIN information_schema.key_column_usage kcu
	ON tc.constraint_name = kcu.constraint_name
JOIN information_schema.constraint_column_usage ccu
	ON ccu.constraint_name = tc.constraint_name
WHERE tc.constraint_type = 'FOREIGN KEY';







