class GadgetsController < ApplicationController
  def overview
    @gadgets = Gadget.all
  end

  def detail
    fetch_gadget
    @meta[:page_title] = "Detail for #{@gadget.name}"
  end

  protected
  def fetch_gadget
    @gadget = Gadget.find(params[:id])
  end
end
