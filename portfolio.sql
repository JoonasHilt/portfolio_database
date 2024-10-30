CREATE TABLE visitors (
    id SERIAL PRIMARY KEY,
    visit_date DATE NOT NULL DEFAULT CURRENT_DATE,
    page_viewed VARCHAR(255),
    project_id INT REFERENCES projects(id) ON DELETE CASCADE, -- Links to a project if applicable
    country VARCHAR(100) -- Optional for geographic insights
);

CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE project_views (
    id SERIAL PRIMARY KEY,
    project_id INT REFERENCES projects(id) ON DELETE CASCADE,
    view_date DATE NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE email_submissions (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- daily visit count
SELECT visit_date, COUNT(*) AS daily_visits 
FROM visitors 
GROUP BY visit_date 
ORDER BY visit_date DESC;

-- most viewd project
SELECT p.title, COUNT(pv.id) AS views 
FROM projects p
JOIN project_views pv ON p.id = pv.project_id
GROUP BY p.title 
ORDER BY views DESC 
LIMIT 1;

--form submission count
SELECT COUNT(*) AS total_submissions 
FROM email_submissions;