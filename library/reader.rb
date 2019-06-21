# frozen_string_literal: true

class Reader
  attr_reader :name, :email, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    @name = name.to_s
    @email = email
    @city = city
    @street = street
    @house = house
  end
end
