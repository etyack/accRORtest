Factory.define :gadget do |f|
  f.name        { Faker::Internet.domain_word }
  f.description { Faker::Lorem.paragraph }
  f.weight      { rand(895) + 5 }
  f.weight_unit { %w[ ounces pounds tons grammes ].rand }
end
