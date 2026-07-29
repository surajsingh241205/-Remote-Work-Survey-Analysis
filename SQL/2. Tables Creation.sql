CREATE TABLE dim_demographics_employment (
    response_id INTEGER PRIMARY KEY,
    birth_year INTEGER,
    gender VARCHAR(50),
    industry VARCHAR(150),
    industry_detail VARCHAR(255),
    occupation VARCHAR(150),
    occupation_detail VARCHAR(255),
    company_size VARCHAR(100),
    is_manager VARCHAR(20),
    household_type VARCHAR(100),
    job_tenure VARCHAR(100),
    region_type VARCHAR(100)
);

CREATE TABLE dim_remote_work (
    response_id INTEGER PRIMARY KEY,

    remote_work_time_last_year VARCHAR(100),
    org_encouraged_remote_last_year VARCHAR(100),
    org_prepared_remote_last_year VARCHAR(100),
    remote_common_last_year VARCHAR(100),
    remote_permission_last_year VARCHAR(100),
    remote_collaboration_last_year VARCHAR(255),
    recommend_remote_last_year VARCHAR(100),

    preferred_remote_time_last_year VARCHAR(100),
    remote_work_time_last_3_months VARCHAR(100),
    org_encouraged_remote_3_months VARCHAR(100),
    org_prepared_remote_3_months VARCHAR(100),
    remote_common_3_months VARCHAR(100),
    remote_permission_last_3_months VARCHAR(100)
);

CREATE TABLE dim_productivity_preference (
    response_id INTEGER PRIMARY KEY,

    preferred_remote_time_after_covid VARCHAR(100),
    employer_encourage_remote_future VARCHAR(100),
    employer_support_remote_future VARCHAR(100),
    remote_work_choice_future VARCHAR(100),
    remote_productivity VARCHAR(100),

    commute_hours_office NUMERIC(5,2),
    work_hours_office NUMERIC(5,2),
    personal_family_hours_office NUMERIC(5,2),
    caring_hours_office NUMERIC(5,2),

    commute_hours_remote NUMERIC(5,2),
    work_hours_remote NUMERIC(5,2),
    personal_family_hours_remote NUMERIC(5,2),
    caring_hours_remote NUMERIC(5,2)
);

CREATE TABLE dim_remote_work_barriers (

    response_id INTEGER PRIMARY KEY,

    most_significant_barrier_1 VARCHAR(255),
    least_significant_barrier_1 VARCHAR(255),

    most_significant_barrier_2 VARCHAR(255),
    least_significant_barrier_2 VARCHAR(255),

    most_significant_barrier_3 VARCHAR(255),
    least_significant_barrier_3 VARCHAR(255),

    most_significant_barrier_4 VARCHAR(255),
    least_significant_barrier_4 VARCHAR(255),

    most_significant_barrier_5 VARCHAR(255),
    least_significant_barrier_5 VARCHAR(255),

    most_significant_barrier_6 VARCHAR(255),
    least_significant_barrier_6 VARCHAR(255),

    most_significant_barrier_7 VARCHAR(255),
    least_significant_barrier_7 VARCHAR(255),

    most_significant_barrier_8 VARCHAR(255),
    least_significant_barrier_8 VARCHAR(255),

    most_significant_barrier_9 VARCHAR(255),
    least_significant_barrier_9 VARCHAR(255),

    most_significant_barrier_10 VARCHAR(255),
    least_significant_barrier_10 VARCHAR(255)
);

CREATE TABLE dim_remote_work_experience (

    response_id INTEGER PRIMARY KEY,

    best_experience_group_1 VARCHAR(255),
    worst_experience_group_1 VARCHAR(255),

    best_experience_group_2 VARCHAR(255),
    worst_experience_group_2 VARCHAR(255),

    best_experience_group_3 VARCHAR(255),
    worst_experience_group_3 VARCHAR(255),

    best_experience_group_4 VARCHAR(255),
    worst_experience_group_4 VARCHAR(255),

    best_experience_group_5 VARCHAR(255),
    worst_experience_group_5 VARCHAR(255),

    best_experience_group_6 VARCHAR(255),
    worst_experience_group_6 VARCHAR(255)
);

CREATE TABLE fact_remote_work_survey (
    response_id INTEGER PRIMARY KEY
);


SELECT COUNT(*) FROM dim_demographics_employment;

SELECT COUNT(*) FROM dim_remote_work;

SELECT COUNT(*) FROM dim_productivity_preference;

SELECT COUNT(*) FROM dim_remote_work_barriers;

SELECT COUNT(*) FROM dim_remote_work_experience;

SELECT COUNT(*) FROM fact_remote_work_survey;















