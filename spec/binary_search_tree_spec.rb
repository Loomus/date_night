require './lib/binary_search_tree'

RSpec.describe BinarySearchTree do
  before :each do
    @tree = BinarySearchTree.new
    @bill_and_ted = @tree.insert(61, "Bill & Ted's Excellent Adventure")
    @johny_english = @tree.insert(16, "Johnny English")
    @sharknado = @tree.insert(92, "Sharknado 3")
    @hannibal = @tree.insert(50, "Hannibal Buress: Animal Furnace")
    @love = @tree.insert(11, "Love")
    @charlies_country = @tree.insert(38, "Charlie's Country")
    @talladega = @tree.insert(73, "Talladega Nights: The Ballad of Ricky Bobby")
    @teen_witch = @tree.insert(97, "Teen Witch")
  end

  it "exists" do
    expect(@tree).to be_a BinarySearchTree
  end

  it "can insert" do
    expect(@bill_and_ted).to eq(0)
    expect(@johny_english).to eq(1)
    expect(@sharknado).to eq(1)
    expect(@hannibal).to eq(2)
    expect(@love).to eq(2)
    expect(@charlies_country).to eq(3)
    expect(@talladega).to eq(2)
    expect(@teen_witch).to eq(2)
  end
end
