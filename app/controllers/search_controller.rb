class SearchController < ApplicationController
  def result
      @documents_collection = DPLibrary::DocumentCollection.new({
          q: params[:search], 
          page: params.fetch(:page, "1"), 
          page_size: params.fetch(:page_size, "10"),
                    
      })
  end
end
