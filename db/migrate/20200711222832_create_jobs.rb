class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :requirements
      t.string :company_logo_url
      t.text :description
      t.decimal :expires
      t.text :responsibilities
      t.decimal :salary, precision: 8, scale:2

      t.timestamps
    end
  end
end
