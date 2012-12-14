class Foto < ActiveRecord::Base
  attr_accessible :galeria_id, :image, :titulo, :remote_image_url
  mount_uploader :image, ImageUploader
  belongs_to :galeria

  def to_jq_upload
    {
      "name" => read_attribute(:image),
      "size" => image.size,
      "url" => image.url,
      "thumbnail_url" => image.thumb.url,
      "delete_type" => "DELETE"
    }
  end
end
