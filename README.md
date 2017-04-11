# README

## 要求功能基本实现

## 本定安装

```base
#clone 到本地
git clone https://github.com/wewin11235/course_system.git

#进入项目
cd course_system

#安装gem和依赖
bundle install

#运行数据库迁移,运行种子文件填充数据库
rails db:setup

#启动项目
rails s

#说明
master分支实现了要求的三个API; my_design分支加了一个简单页面
数据量: Student.all.length => 8, Teacher.all.length => 4, Course.all.length => 12
```
