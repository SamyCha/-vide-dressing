# frozen_string_literal: true

class AddFieldsToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :latitude, :float
    add_column :products, :longitude, :float
  end
end
