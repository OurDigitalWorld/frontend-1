class SearchController < ApplicationController
  def result
      @documents_collection = DPLibrary::DocumentCollection.new({
          q: params[:search], 
          page: params.fetch(:page, "1"), 
          page_size: params.fetch(:page_size, "10"),
          "sourceResource.temporal.begin" => params["sourceResource.temporal.begin"],
          "sourceResource.temporal.end" => params["sourceResource.temporal.end"],
          "sourceResource.type" => params["sourceResource.type"],
      })
      @global_collection = DPLibrary::DocumentCollection.new({
          q: params[:search]
      })
      render "result"
  end

end
