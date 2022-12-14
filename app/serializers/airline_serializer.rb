class AirlineSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image, :slug

  has_many :reviews
end
