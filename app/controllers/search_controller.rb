class SearchController < ApplicationController
  def result
      @documents_collection = DPLibrary::DocumentCollection.new({q: params[:search], page_size: '50'})
  end
end
