class Record < ActiveRecord::Base
  require 'csv'

  def self.import(file)

    people = []

    CSV.foreach(file.path, headers: true) do |row|

      address = Address.where(:street => row['street'], :zip => row['zip']).first_or_create do |address|
        address.city = row['city']
        address.state = row['state']
      end

      organization = Organization.where(:organization => row['organization'], :domain => row['domain']).first_or_create do |organization|
        organization.organization_phone = row['organization_phone']
      end

      people << Person.where(:name => row['name'], :email_address => row['email_address']).first_or_create do |person|
          person.job_title = row['job_title']
          person.phone = row['phone']
          person.organization = organization
          person.address = address
      end

    end

    Person.transaction do
      people.each(&:save!)
    end

  end

end