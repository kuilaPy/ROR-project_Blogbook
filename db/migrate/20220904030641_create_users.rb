# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest
      t.string :f_name
      t.string :l_name
      t.string :gender
      t.date   :date_of_birth

      t.timestamps
    end
  end
end
