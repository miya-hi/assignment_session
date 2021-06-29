class AddUserRefToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :session_logins, :user, foreign_key: true
  end
end
