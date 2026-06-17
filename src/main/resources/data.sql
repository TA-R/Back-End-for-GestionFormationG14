-- 1. تنظيف الجدول لضمان عدم تكرار البيانات عند إعادة التشغيل
DELETE FROM formations;

-- =======================================================
-- 2. إدخال 8 دورات تدريبية تقنية حقيقية (Formations)
-- مع الالتزام التام بقيم الـ Niveau الموجودة في القائمة
-- =======================================================

-- الدورة 1: أساسيات الويب (طبيعة السعر BigDecimal)
INSERT INTO formations (id, titre, duree, niveau, prix) 
VALUES (1, 'HTML5, CSS3 and JavaScript Modern', 30, 'Debutant', 49.99);

-- الدورة 2: تطوير تطبيقات الهواتف بإطار عمل فلاتر
INSERT INTO formations (id, titre, duree, niveau, prix) 
VALUES (2, 'Complete Mobile Development with Flutter & Dart', 45, 'Tous niveaux', 89.99);

-- الدورة 3: تطوير الخلفية باستخدام سبرينج بوت
INSERT INTO formations (id, titre, duree, niveau, prix) 
VALUES (3, 'Mastering Backend Development with Spring Boot', 50, 'Intermediaire', 120.00);

-- الدورة 4: تطوير واجهات الويب باستخدام ريأكت
INSERT INTO formations (id, titre, duree, niveau, prix) 
VALUES (4, 'Modern Web Apps with React.js and Tailwind CSS', 35, 'Intermediaire', 75.50);

-- الدورة 5: بايثون وتحليل البيانات
INSERT INTO formations (id, titre, duree, niveau, prix) 
VALUES (5, 'Python for Data Science and Machine Learning', 60, 'Tous niveaux', 150.00);

-- الدورة 6: احتراف لغة جافا
INSERT INTO formations (id, titre, duree, niveau, prix) 
VALUES (6, 'Advanced Java Programming and Multithreading', 40, 'Avance', 110.00);

-- الدورة 7: الشبكات والحماية الرقمية
INSERT INTO formations (id, titre, duree, niveau, prix) 
VALUES (7, 'Ethical Hacking and Network Security Essentials', 55, 'Avance', 199.99);

-- الدورة 8: قواعد البيانات وتصميمها
INSERT INTO formations (id, titre, duree, niveau, prix) 
VALUES (8, 'SQL Database Design and Query Optimization', 25, 'Debutant', 35.00);

ALTER TABLE formations ALTER COLUMN id RESTART WITH 9;
