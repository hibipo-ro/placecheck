User.create!(name: "Example User",
             email: "example@railstutorial.org",
             password: "foobar",
             password_confirmation: "foobar",
             admin: true)

Post.create!(content: "hello",
             user_id: 1,
             title: "hello",
             data1: 1, data2: 2, data3: 3)

User.create!(name: "テスト",
             email: "test@test.com",
             password: "password",
             password_confirmation: "password",
             admin: true)

Post.create!(content: "test",
             user_id: 2,
             title: "test",
             data1: 3, data2: 5, data3: 1)
