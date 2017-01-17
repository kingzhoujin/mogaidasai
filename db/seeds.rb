# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "這個種子檔會自動建立一個admin帳號, 並且創建 4 個 public jobs, 以及4個hidden jobs"

create_account = User.create([email: 'zjj@gmail.com', password: '12345678', password_confirmation: '12345678', is_admin: 'true'])
puts "Admin account created."

Job.create(title: "土木工程师", description:"为空岛建设宾馆等项目", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "false")

Job.create(title: "全栈工程师", description:"为空岛建设虚拟化工作平台", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "false")

Job.create(title: "风景设计师", description:"为空岛设计、维护美丽风景", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "false")

Job.create(title: "导游", description:"向全世界的人介绍空岛美景，为空岛带来合适的游客", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "false")

Job.create(title: "厨师", description:"为空岛的游客准备美食", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "true")

Job.create(title: "向导", description:"带领游客探索空岛", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "true")

Job.create(title: "睡眠设计师", description:"给游客设计个性化的睡眠体验", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "true")

Job.create(title: "健身教练", description:"为游客订制空岛训练计划", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "true")
