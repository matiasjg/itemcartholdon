class CreateItemholdons < ActiveRecord::Migration
  def change
    create_table :itemholdons do |t|
      t.string :shopifyId
      t.integer :minStock
      t.boolean :active
      t.timestamp :untilDate

      t.timestamps
    end
  end
end
