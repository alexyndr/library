# frozen_string_literal: true

class Reader
  def initialize(name:, email:, city:)
    @name = name.to_s
    @email = email
    @city = city
  end
end
