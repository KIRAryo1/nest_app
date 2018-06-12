class AddSuperclusterToUniverse < ActiveRecord::Migration[5.1]
  def change
    add_reference :superclusters, :universe, foreign_key: true
  end
end
