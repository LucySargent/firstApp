class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    # change uses a rails method create_table to create a table in the db
    # create_table accepts a block with one block variable |t| for table
    # create_table method uses the t object to create name and email columns in the db
    # table name is pl. (model name is sing.) model represents a single user, whereas a db table consists of many users.
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
