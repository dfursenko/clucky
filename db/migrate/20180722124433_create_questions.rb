class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :subject
      t.text :question
      t.integer :views
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
