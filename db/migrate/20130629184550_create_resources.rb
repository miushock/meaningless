class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :resource_id
      t.string :resource_type
      t.string :tags
      t.string :owner
      t.string :beneficiary
      t.string :sharing_policy
      t.binary :content

      t.timestamps
    end
  end
end
