# Spark Academy (Database Security Audit)

A practical database security investigation designed for **Level 5 Computer Science and Cybersecurity students**.

## Overview

Spark Academy has identified discrepancies in student payment records, potentially excessive staff permissions and suspicious database activities.

You are acting as a **Database Security Analyst** tasked with investigating these concerns using SQL, evaluating potential security risks and recommending appropriate controls.

## Learning Outcomes

By completing this activity, you should be able to:

1. Analyse database records to identify anomalies and integrity issues.
2. Investigate audit logs using SQL queries.
3. Evaluate database permissions against least-privilege principles.
4. Apply relational algebra to interpret database queries.
5. Recommend evidence-based database security improvements.

## Getting Started

1. Visit [DB Fiddle](https://dbfiddle.dev/sqlite) and select **SQLite**.
2. Open [`spark_academy_security_audit.sql`](./spark_academy_security_audit.sql).
3. Copy and execute the SQL script to initialise the database.
4. Explore the tables and begin your investigation.

### Dataset

The script contains four tables:

| Table | Description |
|---|---|
| `student_fees` | Student fees and recorded payments |
| `payments` | Actual payment transactions |
| `staff_access` | Staff roles and assigned permissions |
| `audit_log` | Records of database modifications |

## Investigation Tasks

**Task 1 (Data Integrity):** Identify discrepancies between recorded payments and actual transactions.

**Task 2 (Audit Investigation):** Examine database logs to identify potentially suspicious activities.

**Task 3 (Access Control):** Evaluate staff permissions against the principle of least privilege.

**Task 4 (Security Recommendations):** Recommend three prioritised controls to improve database security and accountability.

## Deliverables

Submit a concise security audit report containing:

- SQL queries and relevant results.
- Identified anomalies and supporting evidence.
- Relational algebra expressions for selected queries.
- Three justified security recommendations.

## Guidelines

- Use only the provided fictional dataset.
- Do not modify or delete the investigation records.
- Distinguish suspicious activity from confirmed security incidents.
- Support your conclusions with evidence.

**Key Question:** Can an unusual database transaction alone prove that a security breach occurred?

## Technologies

- SQLite
- SQL
- Relational Algebra
- [DB Fiddle](https://dbfiddle.dev/)

## Licence

MIT License.

---

**Educational purpose:** This repository supports practical learning in database querying, security auditing, data integrity and incident investigation.
