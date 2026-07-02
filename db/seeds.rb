users = [
  { name: "abc", email: "abc@example.com", role: 0},
  { name: "def", email: "def@example.com", role: 0},
  { name: "xyz", email: "xyz@example.com", role: 0},
  { name: "admin", email: "admin@example.com", role: 1}
]

users.each do |user_data|
  user = User.find_or_initialize_by(email: user_data[:email])
  user.name = user_data[:name]
  user.role = user_data[:role]
  user.password = "password"
  user.password_confirmation = "password"
  user.save!
end