FactoryGirl.define do
  factory :gift do
    your_name 'Joe Doe'
    your_email 'john.doe@gmail.com'
    their_email 'jane.doe@gmail.com'
    coupon 
    price { coupon.price }
  end
end
