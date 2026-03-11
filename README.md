# Payroll-automation-system

This project is a custom payroll and attendance management system developed for a mechanical workshop.

The application implements the specific business rules used by the workshop for calculating worker salaries, including overtime, attendance bonuses, and other workshop-specific adjustments.

The goal of this system is to replace manual calculations and spreadsheets with an automated system.

Purpose of the Project
This system was built to implement the actual payroll rules used in a mechanical engineering workshop.
Instead of creating a generic payroll product, the system follows the exact salary calculation logic used by the business, including:
* Overtime calculations
* Attendance bonuses
* 12+ hour work rewards
* Sunday adjustments
* Allowance additions
* Advance deductions
The system ensures that monthly salary calculations are accurate and consistent with the workshop's rules.

Main Features
-> Employee Management
* Add employees
* Update employee salary
* Soft delete employees when they leave the workshop
* Maintain a list of inactive employees

-> Attendance Tracking
* Workers' daily hours are recorded.
* Features include:
* Add attendance
* Update attendance
* Delete incorrect entries
* Prevent future date entries
* Calendar visualization of attendance
* Tooltip showing hours worked each day
* Monthly Employee Summary

-> The dashboard shows
* Normal hours worked
* Overtime hours
* Total hours worked
* Number of working days
This allows quick monitoring of employee work activity.

-> Payslip Generation

The system automatically generates monthly payslips using the workshop’s rules.

Payslips include:
base salary
overtime wages
attendance bonus
12-hour work bonus
allowances
advance deductions
Sunday adjustments

Payslips can also be downloaded as PDF.

-> Old Employee Records
Inactive employees are preserved in the system.
The application allows:
* Viewing old employees
* Viewing their attendance records
* Accessing previously generated payslips

Tech Stack

Backend - Flask

Frontend - HTML, CSS, JavaScript

Database - MySQL

Libraries - html2canvas, jsPDF

Project Structure
```
app
│
├── static
│   ├── attendance.css
│   ├── attendance.js
│   ├── employee.css
│   ├── employee.js
│   ├── index.js
│   ├── old_employees.css
│   ├── old_employees.js
│   ├── payslip.css
│   ├── payslip.js
│   └── style.css
│
├── templates
│   ├── attendance.html
│   ├── employee.html
│   ├── old_employees.html
│   └── payslip.html
│
├── __init__.py
├── db.py
├── routes.py
└── services.py
│
requirements.txt
run.py
```

Running the Project

Clone the repository
```
git clone <repository-url>
cd <repository-folder>
```
Create virtual environment
```
python -m venv venv
```
Activate the environment

Windows
```
venv\Scripts\activate
```
Linux / Mac
```
source venv/bin/activate
```
Install dependencies
```
pip install -r requirements.txt
```
Database Setup
Create a MySQL database.
Update database connection details in
app/db.py

Start the Application
Run the server:
```
python run.py
```
Open the application in the browser:
```
http://127.0.0.1:5000
```

This project was developed to implement the payroll rules of a mechanical workshop and automate the salary calculation process.
