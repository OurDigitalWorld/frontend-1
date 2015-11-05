class DplaController < ApplicationController
  def index
      @documents_collection = DPLibrary::DocumentCollection.new({q: params[:search]})
  end
end
