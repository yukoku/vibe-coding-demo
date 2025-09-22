class CreateResults < ActiveRecord::Migration[8.0]
  def change
    create_table :results do |t|
      t.references :user, null: false, foreign_key: true
      t.references :quiz, null: false, foreign_key: true
      t.json :answers
      t.integer :score

      t.timestamps
    end
  end
end
