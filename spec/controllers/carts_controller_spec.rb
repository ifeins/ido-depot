require 'spec_helper'
require File.dirname(__FILE__) + '/../../app/controllers/carts_controller'

describe CartsController do

  describe "destroy" do
    it "destroys cart" do
      fixtures :carts

      it "destroys cart" do
        count = Cart.count

        delete :destroy, id: carts(:one)
        Cart.count.should eq(count - 1)
      end
    end

  end

end
