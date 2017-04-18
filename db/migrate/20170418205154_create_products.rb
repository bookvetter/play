class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :type
      t.string :cutting
      t.string :size
      t.string :weight
      t.string :number_bales
      t.string :sale_choice
      t.boolean :take_all
      t.boolean :loading
      t.boolean :hauling
      t.string :terms
      t.string :buy_now
      t.string :address
      t.string :city
      t.string :zip_code
      t.string :state
      t.float :latitude
      t.float :longitude
      t.boolean :rain
      t.boolean :tarped
      t.boolean :tested
      t.references :user, foreign_key: true
      t.string :legal_check
      t.string :comments
      t.string :bid
      t.string :test_one
      t.string :test_ttwo
      t.string :test_three
      t.string :test_four
      t.string :test_five
      t.string :tester
      t.boolean :active
      t.datetime :auction_end

      t.timestamps
    end
  end
end
