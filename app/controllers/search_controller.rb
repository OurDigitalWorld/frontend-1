class SearchController < ApplicationController
  def result
      @documents_collection = DPLibrary::DocumentCollection.new({
          q: params[:search], 
          page: params.fetch(:page, "1"), 
          page_size: params.fetch(:page_size, "10"),
          "sourceResource.date.after" => params.fetch("sourceResource.date.after", "1000-01-01"),
          "sourceResource.date.before" => params.fetch("sourceResource.date.before", "2020-12-31"),
          "sourceResource.type" => params["sourceResource.type"],
      })
      @global_collection = DPLibrary::DocumentCollection.new({
          q: params[:search]
      })
  end

end
