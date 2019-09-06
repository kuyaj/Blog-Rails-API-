class CatSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :favorite_food, :owner

  def owner 
    {
      owner_id: self.object.person.id,
      owner_name: self.object.person.name,
      owner_age: self.object.person.age
    }
  end
end
