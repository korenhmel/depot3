require  "spec_helper"
describe Product do 
  product = FactoryGirl.build(:product)
  describe "validations" do    
    it {should validate_presence_of :title}
    it {should validate_presence_of :description}
    ok = %w{fred.gif fred.jpg fred.png FRED.JPG Frank.jpeg FRED.Png http://a.b.c/x/y/z/fred.gif}
    bad = %w{fred.doc fred.gif.more fred.gif/more}
    ok.each do |img|
     it { should allow_value(img).for(:image_url) }
    end
    bad.each do |img|
      it {should_not allow_value(img).for(:image_url)}
    end 
      it {should_not allow_value(-1).for(:price)}
  end  

  describe "Product attributes" do
  it "should show the title of the created product" do
    expect(product.title).to eq("Factory product")
   end 
   it "should show the description of the cteated product"  do
     expect(product.description).to eq("Factory description product")
   end
    it "should show the price of the product" do
      expect(product.price).to eq(100.25)
    end
  end
end
