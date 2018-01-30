puts "Creating Users"
User.destroy_all

User.create(
email:  "1@teste.com",
password: 123456,
motel_id: 24
)
User.create(
email:  "2@teste.com",
password: 123456,
motel_id: 42
)
User.create(
email:  "3@teste.com",
password: 123456,
motel_id: 200
)