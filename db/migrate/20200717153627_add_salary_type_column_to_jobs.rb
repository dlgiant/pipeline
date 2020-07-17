class AddSalaryTypeColumnToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :salary_type, :string
  end
end
