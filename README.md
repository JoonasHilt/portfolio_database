# portfolio_database

1. Visitors Table

   - Tracks each unique visit to the website, including the date of the visit, specific pages viewed, and (optionally) the visitor’s country.
     Fields:
   - id: Unique identifier for each visit.
   - visit_date: Date of the visit.
   - page_viewed: Page name or URL viewed.
   - project_id: References the project if the view is related to a project.
   - country: Optional, tracks the visitor’s country.

2. Projects Table

   - Stores information about each project to track its popularity.
     Fields:
   - id: Unique identifier for each project.
   - title: Title of the project.
   - description: Detailed description of the project.
   - created_at: Timestamp of project creation.

3. Project Views Table

   - Logs each time a project is viewed, helping analyze project popularity over time.
     Fields:
   - id: Unique identifier for each project view.
   - project_id: Foreign key referencing the project.
   - view_date: Date when the project was viewed.

4. Email Submissions Table

   - Records each email submission, including the submission timestamp.
     Fields:
   - id: Unique identifier for each email submission.
   - email: The submitted email address.
   - submitted_at: Timestamp of submission.

Query commands:

- Daily Visit Count
- Most Viewed Project
- Form Submissions Count
