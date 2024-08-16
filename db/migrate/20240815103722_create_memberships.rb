class CreateMemberships < ActiveRecord::Migration[7.2]
  def change
    create_table :memberships do |t|
      t.integer :organization_id
      t.integer :user_id

      t.timestamps
    end
  end
end
