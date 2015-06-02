class AddUserReferenceToAwesomeStuff < ActiveRecord::Migration
  def change
    add_reference :awesome_stuffs, :user, index: true, foreign_key: true
  end
end
