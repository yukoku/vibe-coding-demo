class AddSlugToQuizzes < ActiveRecord::Migration[8.0]
  def change
    add_column :quizzes, :slug, :string
    add_index :quizzes, :slug, unique: true
  end
end
