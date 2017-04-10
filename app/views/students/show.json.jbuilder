json.courses @student.courses do |course|
  json.id course.id
  json.name course.name
  json.teacher do
    json.id course.teacher.id
    json.name course.teacher.name
  end
end
