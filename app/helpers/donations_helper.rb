module DonationsHelper
  def get_funded_amount(request)
    @donation = request.donations.all
    @x = 0
    @donation.each do |sum|
      @x += sum.donated_amount
    end
    return @x
  end
end
