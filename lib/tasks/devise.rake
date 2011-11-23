namespace :security do
  desc 'Create user'
  task :create_admin => :environment do
    password = ENV['PW'] || `pwgen`
    email    = ENV['EMAIL']

    AdminUser.delete_all(:email => email)
    
    puts "create user"
    p email
    p password
    AdminUser.create!({
      :email                 => email.dup,
      :password              => password.dup,
      :password_confirmation => password.dup
    })
  end
end
