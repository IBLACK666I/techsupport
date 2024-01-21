class CreateJoinTableEmployeesTickets < ActiveRecord::Migration[7.1]
  def change
    create_join_table :employees, :tickets do |t|
      t.index [:employee_id, :ticket_id]
      t.index [:ticket_id, :employee_id]
    end
  end
end
