class CreateDepartmentfields < ActiveRecord::Migration
  def change
    create_table :departmentfields do |t|
      t.string :dept_name
      t.string :dept_description
      t.boolean :removed
      t.references :userform, index: true

      t.timestamps
    end
  end
end
