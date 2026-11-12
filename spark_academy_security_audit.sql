
CREATE TABLE student_fees (
    student_id INTEGER PRIMARY KEY,
    student_name TEXT NOT NULL,
    course_fee DECIMAL(10,2) NOT NULL,
    recorded_paid DECIMAL(10,2) NOT NULL
);

CREATE TABLE payments (
    payment_id INTEGER PRIMARY KEY,
    student_id INTEGER NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (student_id)
        REFERENCES student_fees(student_id)
);

CREATE TABLE staff_access (
    username TEXT PRIMARY KEY,
    staff_role TEXT NOT NULL,
    can_view_all_students INTEGER NOT NULL,
    can_update_payments INTEGER NOT NULL
);

CREATE TABLE audit_log (
    log_id INTEGER PRIMARY KEY,
    username TEXT NOT NULL,
    action TEXT NOT NULL,
    student_id INTEGER,
    old_value DECIMAL(10,2),
    new_value DECIMAL(10,2),
    event_time TEXT NOT NULL
);

INSERT INTO student_fees VALUES
(1, 'Alice Brown', 1200, 1200),
(2, 'Ben Smith', 900, 900),
(3, 'Cara Jones', 1000, 500),
(4, 'David Wilson', 800, 800);

INSERT INTO payments VALUES
(1, 1, 1200),
(2, 2, 300),
(3, 3, 500);

INSERT INTO staff_access VALUES
('finance_admin', 'Finance', 1, 1),
('support_agent', 'Support', 1, 1),
('teacher01', 'Teacher', 1, 0);

INSERT INTO audit_log VALUES
(1, 'finance_admin', 'UPDATE_PAYMENT',
 1, 0, 1200, '2026-11-09 10:30:00'),
(2, 'support_agent', 'UPDATE_PAYMENT',
 2, 300, 900, '2026-11-10 02:13:00'),
(3, 'finance_admin', 'UPDATE_PAYMENT',
 4, 0, 800, '2026-11-10 14:20:00');
