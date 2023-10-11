class CsvExportJob
  include Sidekiq::Job

  def perform(all)

    CSV.generate(headers: true) do |csv|
      # Define the headers for the CSV file
      csv << ["ID", "First Name", "Last Name", "Email", "City", "Hobbies"]

      all.each do |user|
        # Populate the rows with user data
        csv << [user.id, user.first_name, user.last_name, user.email, user.city, user.hobbies]
      end
    end
    end
end
