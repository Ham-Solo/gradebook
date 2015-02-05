# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Grade.create(assignment: 'Math Test', grade: 'A', student_id: 1)
Grade.create(assignment: 'HW for Biology', grade: 'D', student_id: 3)

Grade.create(assignment: 'PE Test', grade: 'A', student_id: 3)

Grade.create(assignment: 'Golf', grade: 'A', student_id: 2)

Grade.create(assignment: 'Bowling', grade: 'C', student_id: 1)

Grade.create(assignment: 'Trig', grade: 'B', student_id: 2)

Grade.create(assignment: 'Math Test on 2/12/15', grade: 'D', student_id: 4)

Grade.create(assignment: 'History Test on 1/30/15', grade: 'A', student_id: 4)



#Teacher.create(name: 'Mason Mattews', email: 'mason@TIY.com', password: 'password');
#
#Teacher.create(name: 'Jon Snow', email: 'north@ASIAF.com', password: 'northman');
#
#Teacher.create(name: 'Purple Monster', email: 'madeup@stuff.com', password: 'purps');
#
#Student.create(name: 'Yancy Thigpen', email: 'football@player.com', password: 'buckup', teacher_id: 1);
#
#Student.create(name: 'Kim Stacy', email: 'wolfy@ncsu.edu', password: 'ilovetorock', teacher_id: 2);
#
#Student.create(name: 'Ed Sterling', email: '666@fakebook.com', password: 'devils!', teacher_id: 1);
#
#Student.create(name: 'Frank Obare', email: 'fbare@labcorp.com', password: 'fbare1', teacher_id: 3);
#
#Parent.create(name: 'Jim Thigpen', email: 'retired@IDGAF.com', password: 'jimpossible', student_id: 1);
#
#Parent.create(name: 'Mike Stacy', email: 'mstacy@cree.com', password: 'creetown', student_id: 2);
#
#Parent.create(name: 'Sterling Sterling', email: 'ss@silver.com', password: 'silverisforever', student_id: 3);
