-- E-Progress multi-semester layer.
-- The Flask app creates these tables automatically on first request.
-- This file is provided only as a reference/manual migration.
-- Existing students, subjects and marks tables are NOT altered.

CREATE TABLE IF NOT EXISTS ep_academic_years (
  id INT AUTO_INCREMENT PRIMARY KEY,
  year_name VARCHAR(20) NOT NULL UNIQUE,
  is_active TINYINT(1) NOT NULL DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS ep_semesters (
  id INT AUTO_INCREMENT PRIMARY KEY,
  course_type ENUM('UG','PG') NOT NULL,
  semester_no INT NOT NULL,
  year_no INT NOT NULL,
  semester_label VARCHAR(40) NOT NULL,
  UNIQUE KEY uq_ep_sem (course_type, semester_no)
);

CREATE TABLE IF NOT EXISTS ep_class_semesters (
  id INT AUTO_INCREMENT PRIMARY KEY,
  class_id INT NOT NULL,
  academic_year_id INT NOT NULL,
  course_type VARCHAR(5) NOT NULL,
  year_no INT NOT NULL,
  semester_no INT NOT NULL,
  section VARCHAR(30) DEFAULT 'A',
  UNIQUE KEY uq_ep_class_year_sem (class_id, academic_year_id, semester_no)
);

CREATE TABLE IF NOT EXISTS ep_subject_semesters (
  id INT AUTO_INCREMENT PRIMARY KEY,
  subject_id INT NOT NULL,
  class_id INT NOT NULL,
  academic_year_id INT NOT NULL,
  semester_no INT NOT NULL,
  UNIQUE KEY uq_ep_sub_sem (subject_id, class_id, academic_year_id, semester_no)
);

CREATE TABLE IF NOT EXISTS ep_faculty_assignments (
  id INT AUTO_INCREMENT PRIMARY KEY,
  faculty_id INT NOT NULL,
  academic_year_id INT NOT NULL,
  semester_no INT NOT NULL,
  class_id INT NOT NULL,
  subject_id INT NOT NULL,
  section VARCHAR(30) DEFAULT 'A',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY uq_ep_fac_assign (faculty_id, academic_year_id, semester_no, class_id, subject_id)
);

CREATE TABLE IF NOT EXISTS ep_student_semesters (
  id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  academic_year_id INT NOT NULL,
  semester_no INT NOT NULL,
  year_no INT NOT NULL,
  class_id INT NOT NULL,
  section VARCHAR(30) DEFAULT 'A',
  status VARCHAR(20) DEFAULT 'Current',
  UNIQUE KEY uq_ep_student_sem (student_id, academic_year_id, semester_no)
);

CREATE TABLE IF NOT EXISTS ep_question_papers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  faculty_id INT NOT NULL,
  subject_id INT NOT NULL,
  academic_year_id INT NOT NULL,
  semester_no INT NOT NULL,
  cia VARCHAR(10) NOT NULL,
  file_path TEXT,
  paper_json LONGTEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY uq_ep_qp (faculty_id, subject_id, academic_year_id, semester_no, cia)
);

CREATE TABLE IF NOT EXISTS ep_department_batches (
  id INT AUTO_INCREMENT PRIMARY KEY,
  department_id INT NOT NULL UNIQUE,
  course_type ENUM('UG','PG') NOT NULL,
  start_year INT NOT NULL,
  end_year INT NOT NULL,
  course_duration VARCHAR(20) NOT NULL,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS ep_question_marks (
  id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  subject_id INT NOT NULL,
  academic_year_id INT NOT NULL,
  semester_no INT NOT NULL,
  exam_type VARCHAR(10) NOT NULL,
  question_no VARCHAR(30) NOT NULL,
  question_text TEXT NULL,
  max_marks DECIMAL(6,2) NOT NULL DEFAULT 0,
  obtained_marks DECIMAL(6,2) NULL,
  choice VARCHAR(5) NULL,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_ep_qmark (student_id,subject_id,academic_year_id,semester_no,exam_type,question_no)
);
