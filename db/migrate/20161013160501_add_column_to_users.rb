class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :factory, :boolean
    add_column :users, :company_name, :string
    add_column :users, :address, :string
    add_column :users, :zipcode, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :activity_field, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :job_title, :string
    add_column :users, :phone_number, :string
    add_column :users, :mobile_number, :string
    add_column :users, :company_revenues, :integer
  end
end
