# Create Admin user
User.find_or_create_by!(email: 'admin@example.com') do |user|
  user.name = 'Site Admin'
  user.password = 'password'
  user.role = :admin
end

# Create two candidates with job applications
2.times do |i|
  user = User.find_or_create_by!(email: "candidate#{i + 1}@example.com") do |u|
    u.name = "Candidate #{i + 1}"
    u.password = 'password'
    u.role = :candidate
  end

  2.times do |j|
    user.job_applications.find_or_create_by!(
      title: "Position #{j + 1}",
      company: "Company #{j + 1}"
    )
  end
end
