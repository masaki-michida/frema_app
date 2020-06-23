FactoryBot.define do

  factory :item do  
    name              {"tomato"}
    price             {111}
    statement         {"aaa"}
    status            {1}
    category_id       {1}
    lag               {1}
    delivery_fee      {1}
    prefecture_id     {1}
    user_id           {1}
    condition         {1}
  end

end