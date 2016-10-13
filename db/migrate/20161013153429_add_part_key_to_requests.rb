class AddPartKeyToRequests < ActiveRecord::Migration[5.0]
  def change
    add_reference :requests, :factory, foreign_key: {to_table: :users}
    add_reference :requests, :buyer, foreign_key: {to_table: :users}
  end
end
