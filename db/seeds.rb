Cat.destroy_all
Toy.destroy_all

4.times do
  cat = Cat.create!(name: Faker::Name.first_name)
  rand(3).times do
    Toy.create!(
      cat_id: cat.id,
      name: Faker::Commerce.product_name
    )
  end
end
