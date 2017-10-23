require 'spec_helper'

describe StoreController, type: :request do
   product = FactoryGirl.build(:product)
  describe "GET 'index'" do
    it "returns http success" do
     
       # get 'index'
         get store_index_path

              expect(response).to render_template("index")
           # expect(product.title).to eq("Factory product")
          # response.should be_success
       
      end
  end
end
