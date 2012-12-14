class AddNombreUrlFicheroToFotos < ActiveRecord::Migration
  def change
    add_column :fotos, :remote_image_url, :string
  end
end
