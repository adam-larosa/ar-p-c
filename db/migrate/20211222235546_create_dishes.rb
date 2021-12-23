class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table(:dishes) {|t|
      t.string(:name)
      t.string(:intended_to_be)
      t.float(:current_price)
    }
  end
end
