class AddEmployeeToTickets < ActiveRecord::Migration[7.1]
  def change
    add_reference :tickets, :employee, null: false, foreign_key: true
  end
end
