class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.string :titulo
      t.string :image
      t.integer    :galeria_id

      t.timestamps
    end
  end
end
