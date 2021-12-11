class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :url_image, :price, :discount
  has_one :category
end
