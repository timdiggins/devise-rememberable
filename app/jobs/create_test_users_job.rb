class CreateTestUsersJob < ApplicationJob
  queue_as :default

  def perform
    3.times do |index|
      test_user_email = "test#{index}@example.com"
      puts "creating #{test_user_email}"
      User.create!(email: test_user_email, password: "testpassword")
    end
  end
end
