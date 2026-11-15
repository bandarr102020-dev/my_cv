DROP TABLE IF EXISTS personal_info;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS projects;

CREATE TABLE personal_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    student_id VARCHAR(50),
    job_title VARCHAR(150),
    email VARCHAR(100),
    location VARCHAR(100),
    bio TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE skills (
    id INT AUTO_INCREMENT PRIMARY KEY,
    skill_name VARCHAR(100),
    skill_category VARCHAR(100),
    skill_level VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    project_title VARCHAR(150),
    project_role VARCHAR(100),
    project_desc TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO personal_info (full_name, student_id, job_title, email, location, bio) VALUES 
('بندر فريح الشمري', '202207049', 'مهندس برمجيات وذكاء اصطناعي | مطور ويب', 'bandar@uoh.edu.sa', 'حائل، المملكة العربية السعودية', 'طالب هندسة برمجيات وذكاء اصطناعي في جامعة حائل. شغوف بتطوير تطبيقات الويب المتكاملة، هندسة قواعد البيانات، وبناء الأنظمة البرمجية الحديثة.');

INSERT INTO skills (skill_name, skill_category, skill_level) VALUES 
('HTML5, CSS3, JavaScript', 'تطوير الواجهات (Frontend)', 'متقدم'),
('PHP, XML, RESTful APIs', 'تطوير الخلفية (Backend)', 'متقدم'),
('SQL Server & MySQL', 'إدارة قواعد البيانات', 'متقدم'),
('Python & Data Analytics', 'تحليل البيانات والذكاء الاصطناعي', 'متقدم'),
('UML & System Architecture', 'هندسة البرمجيات ونمذجة النظم', 'متقدم');

INSERT INTO projects (project_title, project_role, project_desc) VALUES 
('منصة نعمة مستدامة (Nimah Mustadama)', 'تطوير ويب وإدارة مشاريع', 'منصة ويب متكاملة لربط المتبرعين بالأغذية مع الجمعيات الخيرية ومديري النظام لتقليل الهدر الغذائي وتعزيز الاستدامة.'),
('نظام المكتبة الرقمية (ScholarStream)', 'مصمم UI/UX ومعمارية معلومات', 'تصميم واجهات المستخدم وهيكلة المعلومات لنظام مكتبة أبحاث رقمية يهدف إلى تقليل تكلفة وجهد البحث الأكاديمي.'),
('تحديث معمارية الأنظمة السحابية (SaaS Refactoring)', 'مهندس برمجيات', 'مقترح هندسي لإعادة هيكلة الأنظمة البرمجية القديمة وتحديثها باستخدام الميكروسيرفس (Microservices) ومبادئ CI/CD.');