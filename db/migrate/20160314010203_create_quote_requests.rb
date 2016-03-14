class CreateQuoteRequests < ActiveRecord::Migration
  def change
    create_table :quote_requests do |t|
      t.references :user, index: true
      t.string :website
      t.string :callback
      t.text :description
      t.decimal :hours
      t.decimal :cost
      t.decimal :nte

      t.timestamps
    end
  end
end
