# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.delete_all
Account.create([
  { username: "Hai Duong", first_name: "Duong", last_name: "Nguyen", email: "muoi07052001@gmail.com", description: "私はフルスタックエンジニア", website: "https://instagram.com/zuong_nh/", password: "password"},
  { username: "Anh Tuan", first_name: "Tuan", last_name: "Truong", email: "tuanchibi@gmail.com", description: "日本語を勉強するのは好きだ", website: "https://instagram.com/anh_tuan/", password: "password"},
  { username: "Thu Ha", first_name: "Ha", last_name: "Dinh", email: "dinhthithuha@gmail.com", description: "IT日本語３を一緒に勉強しましょう", website: "https://instagram.com/thu_ha/", password: "password"},
  { username: "Tai Cong", first_name: "Cong", last_name: "Vu", email: "taicong@gmail.com", description: "ただ俺のウェブサイト", website: "https://instagram.com/tai_cong/", password: "password"},
  { username: "Thanh Hai", first_name: "Hai", last_name: "Dinh", email: "thanhhai@gmail.com", description: "日本の文化が大好きです", website: "https://instagram.com/thanh_hai/", password: "password"},
  { username: "Sy Trung", first_name: "Trung", last_name: "Nghiem", email: "sytrung@gmail.com", description: "一番好きなのはラメンです", website: "https://instagram.com/sy_trung/", password: "password"},
])


Post.delete_all
Post.create([
  { active: true, account_id: 1, description: "これは私がサパで撮った写真です。", image: "https://images.pexels.com/photos/14013604/pexels-photo-14013604.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2", total_likes_count: 0, total_comments_count: 0 },  
])
