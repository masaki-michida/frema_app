require 'rails_helper'

describe User do
  describe '#create' do
    it "nikcnameがない場合は登録できないこと" do
      user = build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end

    it " emailがない場合は登録できないこと" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it " 重複したemailが存在する場合は登録できないこと " do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end


    it "passwordがない場合は登録できないこと" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    it "passwordが7文字以上であれば登録できること " do
      user = build(:user, password: "0000000")
      user.valid?
      expect(user).to be_valid
    end

    it "passwordが6文字以下であれば登録できないこと " do
      user = build(:user, password: "000000")
      user.valid?
      expect(user.errors[:password]).to include("は7文字以上で入力してください")
    end

    it "familynameがない場合は登録できないこと" do
      user = build(:user, familyname: nil)
      user.valid?
      expect(user.errors[:familyname]).to include("を入力してください")
    end

    it "firstnameがない場合は登録できないこと" do
      user = build(:user, firstname: nil)
      user.valid?
      expect(user.errors[:firstname]).to include("を入力してください")
    end

    it "family_chがない場合は登録できないこと" do
      user = build(:user, family_ch: nil)
      user.valid?
      expect(user.errors[:family_ch]).to include("を入力してください")
    end

    it "first_chがない場合は登録できないこと" do
      user = build(:user, first_ch: nil)
      user.valid?
      expect(user.errors[:first_ch]).to include("を入力してください")
    end

    it "birthがない場合は登録できないこと" do
      user = build(:user, birth: nil)
      user.valid?
      expect(user.errors[:birth]).to include("を入力してください")
    end


  end
end