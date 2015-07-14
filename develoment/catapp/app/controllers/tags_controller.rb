class TagsController < ApplicationController
  def show
    @tag = params[:tag]
    @products = Product.tagged_with(@tag, on: 'tag')
  end
end
