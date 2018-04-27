require 'rails_helper'

RSpec.describe OrdersController, "shape" do
  context "with a hash that has some redundant pairs and some meaningful pairs" do
    it "removes empty keys/values and their corresponding href key/value" do
      # order = Order.new
      # order.remove_redundant_properties(data)

      data = {
        "Href for Muesli"=>"c34f2d61-3d66-41bf-94bc-683e1be67c6d",
        "Number of Muesli"=>"",
        "Href for Eggs Benedict"=>"e3eb8900-64a0-416e-8b6e-cd9b60567fb7",
        "Number of Eggs Benedict"=>"",
        "Href for Breakfast Burrito"=>"d6d8cf5d-2f4c-4027-b13f-8c1a7732023d",
        "Number of Breakfast Burrito"=>"",
        "Href for Caesar salad"=>"2d912740-f798-4821-87b0-e791b945931c",
        "Number of Caesar salad"=>"",
        "Href for Carrot Cake"=>"7462068c-1879-482e-b928-2bd1e6e49db7",
        "Number of Carrot Cake"=>"",
        "Href for Corned Beef Reuben"=>"481a376a-a67a-4dad-ba62-3a031e62a319",
        "Number of Corned Beef Reuben"=>"",
        "Href for Halloumi Burger"=>"06a1781e-c64d-4d82-a7ab-08badc73a3d5",
        "Number of Halloumi Burger"=>"",
        "Href for Corn Fritter Stack"=>"9ceaac64-cf1f-47e1-b1fd-40ecafd5c0e4",
        "Number of Corn Fritter Stack"=>"",
        "Href for Hash Browns"=>"15bd0e19-271b-4556-9000-8c2de0a13bea",
        "Number of Hash Browns"=>"",
        "Href for Pancakes"=>"be40ec76-a2fa-4cb0-a797-28fda5d2213c",
        "Number of Pancakes"=>"",
        "Href for Fried Chicken and Waffles"=>"85b66572-ea09-491c-bd93-c4f53e833f02",
        "Number of Fried Chicken and Waffles"=>"",
        "Href for Salmon and Cream Cheese Bagel"=>"dc982e09-5621-417b-b166-c830bb333e2b",
        "Number of Salmon and Cream Cheese Bagel"=>"",
        "Href for Mushroom Quiche"=>"d16a3538-44dd-409f-9ec2-d2b36a4b7a50",
        "Number of Mushroom Quiche"=>"",
        "Href for Mince and Cheese Pie"=>"a32dbd26-6327-4ee5-ae15-21ec700461d6",
        "Number of Mince and Cheese Pie"=>"",
        "Href for Macaroni and Cheese"=>"48499859-5591-43a0-972b-a0732b5b00f7",
        "Number of Macaroni and Cheese"=>"",
        "Href for Chicken Fettucine"=>"c5da9c5f-0ded-4939-baec-2e23da05593e",
        "Number of Chicken Fettucine"=>"",
        "Href for Pulled Pork Doughnuts"=>"6c999d35-d664-4e98-be6b-8c5a9e42da0d",
        "Number of Pulled Pork Doughnuts"=>"",
        "Href for Shakshouka"=>"644d41b6-8881-4417-b46d-aa6fbdf703d1",
        "Number of Shakshouka"=>"",
        "Href for French Toast"=>"f4184fb7-443a-4d93-94f1-3c7b667678dd",
        "Number of French Toast"=>"4",
        "Href for Curly Fries"=>"4e522c1e-406b-4c64-b235-5ba94953ff75",
        "Number of Curly Fries"=>"4"
      }

      expected_data = {
        "Href for French Toast"=>"f4184fb7-443a-4d93-94f1-3c7b667678dd",
        "Number of French Toast"=>"4",
        "Href for Curly Fries"=>"4e522c1e-406b-4c64-b235-5ba94953ff75",
        "Number of Curly Fries"=>"4"
      }

      expect(OrdersController.remove_redundant_properties(data)).to eq (expected_data)
    end
  end
end
