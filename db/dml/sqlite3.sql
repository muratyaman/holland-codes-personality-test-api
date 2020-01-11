INSERT INTO personalities (id, initial, title, alias, description)
VALUES ('r', 'R', 'Realistic', 'Doers', 'People who have athletic ability, prefer to work with objects, machines, tools, plants or animals, or to be outdoors.');
INSERT INTO personalities (id, initial, title, alias, description)
VALUES ('a', 'A', 'Artistic', 'Creators', 'People who have artistic, innovating, or institutional abilities and like to work in unstructured situations using their imagination and creativity.');
INSERT INTO personalities (id, initial, title, alias, description)
VALUES ('s', 'S', 'Social', 'Helpers', 'People who like to work with people to enlighten, inform, help, train, or cure them, or are skilled with words.');
INSERT INTO personalities (id, initial, title, alias, description)
VALUES ('e', 'E', 'Enterprising', 'Persuaders', 'People who like to work with people, influencing, persuading, leading or managing for organizational goals or economic gain.');
INSERT INTO personalities (id, initial, title, alias, description)
VALUES ('c', 'C', 'Conventional', 'Organizers', 'People who like to work with data, have clerical or numerical ability, carry out tasks in detail, or follow through on others'' instructions.');


INSERT INTO tests (id, title, description, seo_code, video_url, image_url, chapter_count, question_count, active )
VALUES (
        1,
        'Holland Codes Personality Test',
        'This is based on Dr. John Holland''s theory that people and work environments can be loosely classified into six different groups. Each of the letters above corresponds to one of the six groups described in the following pages.\nDifferent people''s personalities may find different environments more to their liking. While you may have some interests in and similarities to several of the six groups, you may be attracted primarily to two or three of the areas. These two or three letters are your "Holland Code." For example, with a code of "RES" you would most resemble the Realistic type, somewhat less resemble the Enterprising type, and resemble the Social type even less. The types that are not in your code are the types you resemble least of all.',
        '',
        '',
        '',
        6,
        42,
        1
        );


INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (1, 'I like to work on cars',1, 1, 1, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (2, 'I like to do puzzles',1, 1, 2, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (3, 'I am good at working independently',1, 1, 3, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (4, 'I like to work in teams',1, 1, 4, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (5, 'I am an ambitious person, I set goals for myself',1, 1, 5, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (6, 'I like to organize things, (files, desks/offices)',1, 1, 6, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (7, 'I like to build things',1, 1, 7, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (8, 'I like to read about art and music',1, 2, 8, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (9, 'I like to have clear instructions to follow',1, 2, 9, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (10, 'I like to try to influence or persuade people',1, 2, 10, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (11, 'I like to do experiments',1, 2, 11, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (12, 'I like to teach or train people',1, 2, 12, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (13, 'I like trying to help people solve their problems',1, 2, 13, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (14, 'I like to take care of animals',1, 2, 14, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (15, 'I wouldn''t mind working 8 hours per day in an office',1, 3, 15, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (16, 'I like selling things',1, 3, 16, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (17, 'I enjoy creative writing',1, 3, 17, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (18, 'I enjoy science',1, 3, 18, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (19, 'I am quick to take on new responsibilities',1, 3, 19, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (20, 'I am interested in healing people',1, 3, 20, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (21, 'I enjoy trying to figure out how things work',1, 3, 21, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (22, 'I like putting things together or assembling things',1, 4, 22, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (23, 'I am a creative person',1, 4, 23, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (24, 'I pay attention to details',1, 4, 24, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (25, 'I like to do filing or typing',1, 4, 25, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (26, 'I like to analyze things (problems/ situations)',1, 4, 26, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (27, 'I like to play instruments or sing',1, 4, 27, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (28, 'I enjoy learning about other cultures',1, 4, 28, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (29, 'I would like to start my own business',1, 5, 29, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (30, 'I like to cook',1, 5, 30, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (31, 'I like acting in plays',1, 5, 31, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (32, 'I am a practical person',1, 5, 32, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (33, 'I like working with numbers or charts',1, 5, 33, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (34, 'I like to get into discussions about issues',1, 5, 34, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (35, 'I am good at keeping records of my work',1, 5, 35, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (36, 'I like to lead',1, 6, 36, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (37, 'I like working outdoors',1, 6, 37, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (38, 'I would like to work in an office',1, 6, 38, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (39, 'I''m good at math',1, 6, 39, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (40, 'I like helping people',1, 6, 40, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (41, 'I like to draw',1, 6, 41, 1);
INSERT INTO questions (id, title, test_id, chapter_number, sort_idx, active )
VALUES (42, 'I like to give speeches',1, 6, 42, 1);

INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (11, 'Yes', 1, -1, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (12, 'No', 1, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (21, 'Yes', 2, -1, 1, 0, 1, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (22, 'No', 2, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (31, 'Yes', 3, -1, 1, 0, 0, 1, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (32, 'No', 3, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (41, 'Yes', 4, -1, 1, 0, 0, 0, 1, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (42, 'No', 4, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (51, 'Yes', 5, -1, 1, 0, 0, 0, 0, 1, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (52, 'No', 5, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (61, 'Yes', 6, -1, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (62, 'No', 6, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (71, 'Yes', 7, -1, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (72, 'No', 7, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (81, 'Yes', 8, -1, 1, 0, 0, 1, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (82, 'No', 8, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (91, 'Yes', 9, -1, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (92, 'No', 9, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (101, 'Yes', 10, -1, 1, 0, 0, 0, 0, 1, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (102, 'No', 10, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (111, 'Yes', 11, -1, 1, 0, 1, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (112, 'No', 11, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (121, 'Yes', 12, -1, 1, 0, 0, 0, 1, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (122, 'No', 12, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (131, 'Yes', 13, -1, 1, 0, 0, 0, 1, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (132, 'No', 13, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (141, 'Yes', 14, -1, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (142, 'No', 14, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (151, 'Yes', 15, -1, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (152, 'No', 15, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (161, 'Yes', 16, -1, 1, 0, 0, 0, 0, 1, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (162, 'No', 16, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (171, 'Yes', 17, -1, 1, 0, 0, 1, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (172, 'No', 17, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (181, 'Yes', 18, -1, 1, 0, 1, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (182, 'No', 18, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (191, 'Yes', 19, -1, 1, 0, 0, 0, 0, 1, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (192, 'No', 19, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (201, 'Yes', 20, -1, 1, 0, 0, 0, 1, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (202, 'No', 20, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (211, 'Yes', 21, -1, 1, 0, 1, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (212, 'No', 21, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (221, 'Yes', 22, -1, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (222, 'No', 22, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (231, 'Yes', 23, -1, 1, 0, 0, 1, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (232, 'No', 23, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (241, 'Yes', 24, -1, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (242, 'No', 24, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (251, 'Yes', 25, -1, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (252, 'No', 25, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (261, 'Yes', 26, -1, 1, 0, 1, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (262, 'No', 26, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (271, 'Yes', 27, -1, 1, 0, 0, 1, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (272, 'No', 27, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (281, 'Yes', 28, -1, 1, 0, 0, 0, 1, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (282, 'No', 28, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (291, 'Yes', 29, -1, 1, 0, 0, 0, 0, 1, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (292, 'No', 29, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (301, 'Yes', 30, -1, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (302, 'No', 30, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (311, 'Yes', 31, -1, 1, 0, 0, 1, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (312, 'No', 31, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (321, 'Yes', 32, -1, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (322, 'No', 32, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (331, 'Yes', 33, -1, 1, 0, 1, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (332, 'No', 33, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (341, 'Yes', 34, -1, 1, 0, 0, 0, 1, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (342, 'No', 34, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (351, 'Yes', 35, -1, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (352, 'No', 35, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (361, 'Yes', 36, -1, 1, 0, 0, 0, 0, 1, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (362, 'No', 36, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (371, 'Yes', 37, -1, 1, 1, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (372, 'No', 37, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (381, 'Yes', 38, -1, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (382, 'No', 38, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (391, 'Yes', 39, -1, 1, 0, 1, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (392, 'No', 39, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (401, 'Yes', 40, -1, 1, 0, 0, 0, 1, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (402, 'No', 40, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (411, 'Yes', 41, -1, 1, 0, 0, 1, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (412, 'No', 41, -2, 1, 0, 0, 0, 0, 0, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (421, 'Yes', 42, -1, 1, 0, 0, 0, 0, 1, 0);
INSERT INTO choices (id, title, question_id, sort_idx, active, r, i, a, s, e, c ) VALUES (422, 'No', 42, -2, 1, 0, 0, 0, 0, 0, 0);

