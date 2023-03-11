class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.text :biography
      t.text :portfolio

      t.timestamps
    end
  end
end
