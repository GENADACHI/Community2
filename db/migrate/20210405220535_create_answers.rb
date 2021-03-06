class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.belongs_to :comment
      t.belongs_to :menber
      has_many :likes, as: :likeable
      t.integer :comment_id
      t.integer :menber_id
      t.text :content
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
