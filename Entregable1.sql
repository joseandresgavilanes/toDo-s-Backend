CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int,
  "id_role" int NOT NULL
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "level" int NOT NULL,
  "teacher" varchar,
  "id_category" int NOT NULL,
  "course_video" int NOT NULL
);

CREATE TABLE "course_videos" (
  "id" int PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar(512) NOT NULL
);

CREATE TABLE "categories" (
  "id" int PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "id" int PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "level" (
  "id" int PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "inscription" (
  "id" uuid PRIMARY KEY,
  "advance_course" varchar NOT NULL DEFAULT 0,
  "generation" varchar,
  "id_user" uuid NOT NULL,
  "id_course" uuid NOT NULL,
  "course_finalyzed" uuid
);

ALTER TABLE "users" ADD FOREIGN KEY ("id_role") REFERENCES "roles" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("id_category") REFERENCES "categories" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("level") REFERENCES "level" ("id");

ALTER TABLE "inscription" ADD FOREIGN KEY ("id_user") REFERENCES "users" ("id");

ALTER TABLE "inscription" ADD FOREIGN KEY ("id_course") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("course_video") REFERENCES "course_videos" ("id");

ALTER TABLE "inscription" ADD FOREIGN KEY ("course_finalyzed") REFERENCES "inscription" ("id");


insert into roles (id, name) values (1, 'student'), (2, 'teacher'), (3, 'admin');

insert into level (id, name) values (1, 'beginner'), (2, 'intermediate'), (3, 'advanced');

insert into categories (id, name) values (1, 'backend'), (2, 'frontend');

insert into course_videos  (id, title, url) values (1, 'Golang If/el', 'www.golangif/else.com'), (2, 'Rust introduction', 'www.rustintroduction.com');

insert into users  (id, name, email, password, age, id_role) values ('8ef0e8e5-7eb2-418a-84f1-1f8d379fd463', 'Jose', 'jose@hotmail.com', 'jose1234', 18, 3), ('f9342bad-e6c5-4767-8c92-7bde68b72238', 'Fernando', 'fernando@hotmail.com', '123456', 24, 1);



insert into courses  (id, title, description , level, teacher, id_categorie, course_video) values 
('7bf9e709-1163-4d5b-9ccb-857bffc19bd7', 'React js', 'Desarrollo de aplicaciones con React', 1, 'Jesus Andres', 2, 1), 
('8de219f6-7cc2-44f5-b446-4be8cf204ad7', 'Golang', 'Backend con golang',1, 'Jose Mchial', 1, 2);

insert into inscription  (id, advance_course , generation , id_user , id_course  ) values 
('a12f23aa-7aa5-4e88-a5f4-4661376cdfac', '20%', 'Gen 13', '8ef0e8e5-7eb2-418a-84f1-1f8d379fd463', '7bf9e709-1163-4d5b-9ccb-857bffc19bd7'), 
('9e89a0e7-ee16-454a-95f4-2066735bf36f', '90%', 'Gen 17', 'f9342bad-e6c5-4767-8c92-7bde68b72238', '8de219f6-7cc2-44f5-b446-4be8cf204ad7');
