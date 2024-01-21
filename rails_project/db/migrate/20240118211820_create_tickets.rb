class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.string :status
      t.text :description
      t.binary :image

      t.timestamps
    end
  end
end
