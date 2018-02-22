module MenusHelper
  def price_correction(item)
    # '$' + (item.price * 0.01).round(2).to_s
    number_to_currency(item.price * 0.01, :unit => "")
  end
end
