class SearchController < ApplicationController
  def result
      @documents_collection = DPLibrary::DocumentCollection.new({q: params[:search], page: params[:page], page_size: '5'})
  end
end
