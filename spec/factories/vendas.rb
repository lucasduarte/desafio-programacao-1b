require 'faker'

FactoryGirl.define do
  factory :venda do
    comprador { Faker::Name.name }
    descricao { Faker::Commerce.product_name }
    preco_unitario { Faker::Commerce.price }
    quantidade { Faker::Number.decimal(2) }
    endereco { Faker::Address.street_address }
    fornecedor { Faker::Name.name }
  end
end
