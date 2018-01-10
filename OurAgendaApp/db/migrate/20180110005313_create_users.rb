# original from rails g scaffold User first_name:string
# class CreateUsers < ActiveRecord::Migration[5.1]
#   def change
#     create_table :users do |t|
#       t.string :first_name

#       t.timestamps
#     end
#   end
# end

#db/migrate/XXXXXX_create_users.rb
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest #for storing crypted passwords
      t.timestamps #default created_at and updated_at attributes 
    end

    #adding a join table for our 
    #has_and_belongs_to_many relationship
    #model order needs to be alphabetical 
    create_table :meetings_users do |t|
      t.integer :meeting_id
      t.integer :user_id 
    end
    #add an index to speed queries up
    add_index(:meetings_users, [:meeting_id, :user_id])
  end
end