class CreatePerson < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.belongs_to :organization, index: true
      t.belongs_to :address, index: true
      t.string :name
      t.string :job_title
      t.string :email_address
      t.string :phone
      t.timestamps
    end
  end
end
