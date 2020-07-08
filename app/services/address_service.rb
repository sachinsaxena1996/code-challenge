module AddressService
  def self.city_state(zip_code)
    address = ZipCodes.identify(zip_code)
    [address[:city], address[:state_name]]
  end
end