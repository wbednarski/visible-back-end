class IncreaseNumberSizeLimit < ActiveRecord::Migration[5.0]
  def change
    change_column(:registered_users, :number, :integer, limit: 8)
  end
end
