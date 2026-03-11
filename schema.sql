-- Create database
CREATE DATABASE workshop_payroll;

-- Use database
USE workshop_payroll;


-- =========================
-- Employees Table
-- =========================

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    salary DOUBLE,
    is_active BOOLEAN DEFAULT TRUE
);


-- =========================
-- Attendance Table
-- =========================

CREATE TABLE attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    date DATE,
    hours DOUBLE,
    
    FOREIGN KEY (employee_id)
        REFERENCES employees(id)
        ON DELETE CASCADE
);


-- =========================
-- Payslips Table
-- =========================

CREATE TABLE payslips (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    month VARCHAR(2) NOT NULL,
    year INT NOT NULL,

    total_salary DECIMAL(10,2),
    over_time_wage DECIMAL(10,2),
    total_days INT,
    over_time DECIMAL(10,2),
    days_worked INT,
    no_of_working_days INT,

    attendance_bonus DECIMAL(10,2),
    allowance DECIMAL(10,2),
    advance DECIMAL(10,2),

    twelve_hours_count INT,
    twelve_hours_bonus DECIMAL(10,2),

    base_salary DECIMAL(10,2),

    generated_on DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (employee_id)
        REFERENCES employees(id)
        ON DELETE CASCADE
);
