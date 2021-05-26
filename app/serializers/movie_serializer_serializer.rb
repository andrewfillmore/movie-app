class MovieSerializerSerializer < ActiveModel::Serializer
  attributes :id, :year, :title, :plot, :director, :english, :genres
end
