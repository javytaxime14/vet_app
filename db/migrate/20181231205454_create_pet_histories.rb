class CreatePetHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_histories do |t|
      t.date :date, default: -> { 'CURRENT_DATE' }
      t.float :weight
      t.float :height
      t.text :description
      t.belongs_to :pet, foreign_key: true
      t.timestamps
    end
  end
end
