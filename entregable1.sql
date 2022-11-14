CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar,
  "email" varchar,
  "password" varchar,
  "age" int
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar,
  "description" text,
  "level" varchar,
  "teacher" varchar,
  "category_id" int
);

CREATE TABLE "courses_details" (
  "id" int PRIMARY KEY,
  "user_id" uuid,
  "course_id" uuid
);

CREATE TABLE "course_video" (
  "id" uuid PRIMARY KEY,
  "title" varchar,
  "url" varchar,
  "course_id" uuid
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "roles" (
  "id" serial PRIMARY KEY,
  "name" varchar
);

ALTER TABLE "courses_details" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "courses_details" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "course_video" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "roles" ADD FOREIGN KEY ("id") REFERENCES "courses_details" ("id");

insert into courses (
id,
title,
description,
level,
teacher,
category_id
) values (
'4bb54155-6803-44a8-9578-664f3be403cc',
'Introduccion a Java',
'Curso de preparacion para la programacion en Java',
'Principiante',
'Ricardo Diaz',
1
),
(
'84f2d2a5-642d-4386-818f-e5ddc755cf51',
'Python en el BackEnd',
'Curso de preparacion para la programacion en Python',
'Intermedio',
'Juan Perez',
2
)
; 


insert into categories(
id,
name
) values (
1,
'Java'
),
(
2,
'Python'
);

insert into course_video (
id,
title,
url,
course_id 
) values (
'23be4c4e-e97e-450d-9e31-b642a450c2ac',
'Java desde Cero a master',
'www.cursosonline/java/principiantes.com',
'4bb54155-6803-44a8-9578-664f3be403cc'
),
(
'c9d5ed86-a308-46b6-899e-7bd596657100',
'Curso Completo de Python',
'www.cursosonline/python/intermedio.com',
'84f2d2a5-642d-4386-818f-e5ddc755cf51'
);

insert into users (
id,
name,
email,
"password" ,
age 
) values (
'd3db7a8a-b3db-4977-b54b-f51461306686',
'Estefania Richle',
'EstefRichle@gmail.com',
'root123',
23
),
(
'20cbc09f-257c-4fa8-bea3-57db61cafba3',
'Carlos Ramirez',
'CarlosRam@gmail.com',
'Ram25rs',
28
);


insert into courses_details (
id,
user_id ,
course_id 
) values (
1,
'd3db7a8a-b3db-4977-b54b-f51461306686',
'4bb54155-6803-44a8-9578-664f3be403cc'
),
(
2,
'20cbc09f-257c-4fa8-bea3-57db61cafba3',
'84f2d2a5-642d-4386-818f-e5ddc755cf51'
);

insert into roles (
id,
"name" 
) values (
1,
'Admin'
), (
2,
'Student'
);
