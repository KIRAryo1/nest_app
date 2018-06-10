class CreateSuperclusters < ActiveRecord::Migration[5.1]
  def change
    create_table :superclusters do |t|
      t.string :name

      t.timestamps
    end
  end
end
