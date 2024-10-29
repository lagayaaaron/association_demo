# db/seeds.rb

# Clear existing data in the correct order
Appointment.destroy_all
Physician.destroy_all
Patient.destroy_all
Doctor.destroy_all
Profile.destroy_all
User.destroy_all
Book.destroy_all
Author.destroy_all
Account.destroy_all
Supplier.destroy_all

# Create Suppliers and their Accounts
10.times do
  supplier = Supplier.create(name: Faker::Company.name)

  # Create only one account for each supplier
  account = supplier.create_account(name: Faker::Company.industry, account_number: Faker::Number.leading_zero_number(digits: 10))
  account.save
  AccountHistory.create(supplier: supplier, account: account)
end

# Create Authors and Books
10.times do
  author = Author.create(name: Faker::Book.author)

  rand(1..3).times do
    author.books.create(title: Faker::Book.title, description: Faker::Lorem.sentence)
  end
end

# Create Users and Profiles
10.times do
  user = User.create(name: Faker::Name.name)

  user.create_profile(bio: Faker::Lorem.paragraph)
end

# Create Doctors and Patients
10.times do
  doctor = Doctor.create(name: Faker::Name.name)

  rand(2..4).times do
    doctor.patients.create(name: Faker::Name.name)
  end
end

# Create Physicians and Appointments
10.times do
  physician = Physician.create(name: Faker::Name.name)

  rand(1..3).times do
    physician.appointments.create(
      appointment_date: Faker::Date.forward(days: 23),
      patient: Doctor.first.patients.sample # Randomly assign a patient from the first doctor
    )
  end
end
