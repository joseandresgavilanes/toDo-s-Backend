CREATE TABLE "to_dos" (
  "id" uuid PRIMARY KEY,
  "task" varchar NOT NULL,
  "owner" varchar NOT NULL,
  "description" text,
  "is_finished" bool DEFAULT false,
  "creation_date" date,
  "due_date" date
);


insert into to_dos (
id,
task,
"owner",
description ,
is_finished ,
creation_date ,
due_date 
) 
values 
(
'6c7af9f7-11d3-4055-9433-403c908c9095', 
'Meditate',
'Pepe',
'Meditate for 30 minutes after high-school',
true,
'2022/09/22',
'2022/09/23'
),
(
'a3e46cc8-015a-4320-81da-3eb38f13da2c', 
'Website',
'Jose',
'Create a Full Stack website as an Academlos assigment',
false,
'2022/09/12',
'2022/11/03'
),
(
'e1b39698-a094-432a-9d3b-b73389be4e5e', 
'Walk the dog',
'Luisa',
'Take Bruno to the park',
false,
'2022/09/22',
'2022/09/22'
),
(
'7633d3ef-aacd-40e4-b139-1d53678cafb2', 
'Cook',
'Juan',
'Prepare something delicious for dinner',
false,
'2022/09/22',
'2022/09/22'
),
(
'6f43de1a-8e89-4702-bb0c-e729fe9f7cbd', 
'Read',
'Maria',
'Read the new book, cracking the code, that Marco gave me',
true,
'2022/09/22',
'2022/09/23'
);


select * from to_dos 

select * from to_dos where is_finished = true