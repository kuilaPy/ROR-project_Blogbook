# frozen_string_literal: true

class AddPostIdToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :post_id, :integer
  end
end
