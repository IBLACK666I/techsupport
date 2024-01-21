class AddDepartmentToEmployees < ActiveRecord::Migration[7.1]
  def change
    add_reference :employees, :department, null: false, foreign_key: true
  end
end
