class CreateDreams < ActiveRecord::Migration[5.1]
  def change
    create_table :dreams do |t|
      t.string :content, null: false
      t.date :sleep_date, null: false
      t.belongs_to :user, null: false

      t.timestamps
    end
  end
end
