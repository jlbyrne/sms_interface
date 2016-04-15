class CreateUsersCompanies < ActiveRecord::Migration
  def change
    create_table :users_companies, id: false do |t|
        t.belongs_to :user, index: true
        t.belongs_to :company, index: true

        t.timestamps null: false
    end
  end
end
