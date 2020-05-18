class ServicePackPickedService
  def initialize object 
    @object = object
  end

  def call
    @object.update_attributes(service_pack_picked_attribute)
  end

  private
  attr_accessor :object, :name, :desciption, :price
  def service_pack 
    @service_pack = ServicePack.find_by(id: object.parent_id)
  end

  def service_pack_picked_attribute
    {
      name: service_pack.name,
      desciption: service_pack.desciption,
      price: service_pack.price,
      status: false
    }
  end
end
