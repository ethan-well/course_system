json.teachers @teachers do |teacher|
  json.id teacher.id
  json.name teacher.name

  json.courses teacher.courses do |course|
    json.id course.id
    json.name course.name
  end
end
