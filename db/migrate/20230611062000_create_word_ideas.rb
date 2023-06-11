class CreateWordIdeas < ActiveRecord::Migration[7.0]
  def change
    create_table :word_ideas do |t|
      t.references :word, null: false, foreign_key: true
      t.references :idea, null: false, foreign_key: true

      t.timestamps
    end
  end
end
