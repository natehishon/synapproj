class CreateOrganization < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :organization
      t.string :organization_phone
      t.string :domain
    end
  end
end
