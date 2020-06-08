FactoryBot.define do

  factory :user do
    nickname               {"abe"}
    email                  {"kkk@gmail.com"}
    familyname             {"福岡"}
    firstname              {"太郎"}
    family_ch              {"フクオカ"}
    first_ch               {"タロウ"}
    birth                  {"19960308"}
    password               {"0000000"}
    password_confirmation  {"0000000"}
    to_familyname          {"福岡"}
    to_firstname           {"太郎"}
    to_family_ch           {"フクオカ"}
    to_first_ch            {"タロウ"}
    zip                    {"0000000"}
    prefectures            {"0"}
    adress_city            {"福岡市"}
    adress_street          {"西区"}
  end

end