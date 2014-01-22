class CreateMovies < ActiveRecord::Migration
  def up
    create_table :movies do |t|
      t.string :title
      t.string :poster
      t.integer :score

      t.timestamps
    end
  end

  def down
    drop_table :movies
  end
end
