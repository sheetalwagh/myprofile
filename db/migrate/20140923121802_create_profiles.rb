class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :email
      t.string :address
      t.string :companyname
      t.references :user, index: true

      t.timestamps
    end
  end
end
