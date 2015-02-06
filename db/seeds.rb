# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Assignment.create(name: 'Math Test', student_id: 1, grade: 'A')

Assignment.create(name: 'Biology test on 2/2/15', student_id: 3, grade: 'D')

Assignment.create(name: 'Golf', student_id: 2, grade: 'B')

Assignment.create(name: 'Bowling',  student_id: 4, grade: 'C')

Assignment.create(name: 'Trig', student_id: 2, grade: 'A')

Assignment.create(name: 'HW for Biology', student_id: 4, grade: 'D')

Assignment.create(name: 'PE Test', student_id: 1, grade: 'C')


Teacher.create(name: 'Mason Mattews', email: 'mason@TIY.com', password: 'password');

Teacher.create(name: 'Jon Snow', email: 'north@ASIAF.com', password: 'northman');

Teacher.create(name: 'Purple Monster', email: 'madeup@stuff.com', password: 'purps');


Student.create(name: 'Yancy Thigpen', email: 'football@player.com', password: 'buckup', teacher_id: 1, parent_id: 1);

Student.create(name: 'Kim Stacy', email: 'wolfy@ncsu.edu', password: 'ilovetorock', teacher_id: 2, parent_id: 2);

Student.create(name: 'Ed Sterling', email: '666@fakebook.com', password: 'devils!', teacher_id: 1, parent_id: 3);

Student.create(name: 'Frank Obare', email: 'fbare@labcorp.com', password: 'fbare1', teacher_id: 3, parent_id: 4);


Parent.create(name: 'Jim Thigpen', email: 'retired@IDGAF.com', password: 'jimpossible');

Parent.create(name: 'Mike Stacy', email: 'mstacy@cree.com', password: 'creetown');

Parent.create(name: 'Sterling Sterling', email: 'ss@silver.com', password: 'silverisforever');

Parent.create(name: 'Bob Obare', email: 'parent@parent.com', password: 'parent');
