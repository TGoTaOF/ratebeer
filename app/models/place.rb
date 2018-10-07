class Place < OpenStruct
  def self.rendered_fields
    [:id, :name, :status, :street, :city, :zip, :country, :overall]
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
