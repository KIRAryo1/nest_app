class CreateProtains < ActiveRecord::Migration[5.1]
  def change
    create_table :protains do |t|
      t.string :name

      t.timestamps
    end
  end
end
