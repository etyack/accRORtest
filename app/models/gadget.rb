class Gadget < ActiveRecord::Base
  def complete_weight
    "#{weight} #{weight_unit}"
  end
end
