require 'rails_helper'
describe Item do
  describe '#create' do
    it "nameがない場合は登録できないこと" do
      item = build(:item, name: nil)
      item.valid?
      expect(item.errors[:name]).to include("を入力してください")
    end

    it "priceがない場合は登録できないこと" do
      item = build(:item, price: nil)
      item.valid?
      expect(item.errors[:price]).to include("を入力してください")
    end

    it "statementがない場合は登録できないこと" do
      item = build(:item, statement: nil)
      item.valid?
      expect(item.errors[:statement]).to include("を入力してください")
    end

    it "statusがない場合は登録できないこと" do
      item = build(:item, status: nil)
      item.valid?
      expect(item.errors[:status]).to include("を入力してください")
    end

    it "lagがない場合は登録できないこと" do
      item = build(:item, lag: nil)
      item.valid?
      expect(item.errors[:lag]).to include("を入力してください")
    end

    it "delivery_feeがない場合は登録できないこと" do
      item = build(:item, delivery_fee: nil)
      item.valid?
      expect(item.errors[:delivery_fee]).to include("を入力してください")
    end

    it "conditionがない場合は登録できないこと" do
      item = build(:item, condition: nil)
      item.valid?
      expect(item.errors[:condition]).to include("を入力してください")
    end

    it "prefecture_idがない場合は登録できないこと" do
      item = build(:item, prefecture_id: nil)
      item.valid?
      expect(item.errors[:prefecture_id]).to include("を入力してください")
    end

    it "category_idがない場合は登録できないこと" do
      item = build(:item, category_id: nil)
      item.valid?
      expect(item.errors[:category_id]).to include("を入力してください")
    end

    it "user_idがない場合は登録できないこと" do
      item = build(:item, user_id: nil)
      item.valid?
      expect(item.errors[:user_id]).to include("を入力してください")
    end


  end
end