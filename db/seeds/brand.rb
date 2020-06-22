
adjective = ["美しい","高貴な",
            "美味しい","ぐれーとな",
            "えくせれんとな",
            "凄すぎる","明日から使える",
            "天才的な","挑戦的な"
            ]

adjective.each do |i| 
  Brand.create(name: "#{i}ブランド");
end