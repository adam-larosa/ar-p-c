class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.belongs_to :dish
      t.references :user
      t.integer :score
      t.string :reason
      t.float :recommended_price
    end
  end
end
