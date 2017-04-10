Teacher.delete_all
Student.delete_all
Course.delete_all

students = ['小明', '小红', '小花', '小亮', '小华', '多多', '少少', '豆豆']
courses = ['C/C++', 'Linux', 'JavaScript', 'Ruby', '数据结构/算法', '历史文化', '歌曲欣赏', '电影鉴赏', '诗歌鉴赏',
   '舞蹈艺术', '绘画', '机械设计']
teachers = ['王老师', '张老师', '李老师', '吴老师']

#create teachers
teachers.each do |name|
  Teacher.create(name: name)
end

#create students
students.each do |name|
  Student.create(name: name)
end

#create courses
#create the  associations between courses and teachers
courses.each_index do |index|
  teacher_id = index % teachers.length + 1
  Course.create(name: courses[index], teacher_id: teacher_id)
end

#create the associations between students and courses
#create the associations between students and teachers
courses.each_index do |index|
  student_id = index % students.length + 1
  course = Course.find(index+1)
  if course.present?
    Schedule.create(student_id: student_id, course_id: course.id)
    Relation.find_or_create_by(student_id: student_id, teacher_id: course.teacher_id)
  end
end
