CREATE OR REPLACE PROCEDURE add_job (
  jobid jobs.job_id%TYPE,
  jobtitle jobs.job_title%TYPE) IS
BEGIN
  INSERT INTO jobs (job_id, job_title)
  VALUES (jobid, jobtitle);
  COMMIT;
END add_job;
/
SHOW ERRORS
