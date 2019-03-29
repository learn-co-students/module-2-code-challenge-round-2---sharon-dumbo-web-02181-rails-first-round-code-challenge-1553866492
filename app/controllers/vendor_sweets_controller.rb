class VendorSweetsController < ApplicationController


  def new
    @vendor_sweet = VendorSweet.new
    @vendor = Vendor.new
    @sweet = Sweet.new
  end

  def create
    @vendor_sweet = VendorSweet.create(vendor_sweet_params)
    if @vendor_sweet.valid?
    redirect_to vendor_path(@vendor_sweet.vendor.id)
    # (@vendor_sweet.vender.name)
    # we'd like to go to the selected vendor's show page.
    else
      render :new
    end
  end

  private

  def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id)
  end

end
