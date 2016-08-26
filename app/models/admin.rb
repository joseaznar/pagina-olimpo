class Admin
  def initialize(email, password)
    @email = email
    @password = password
  end


  def signed_in?
    (@password == "Luisito1997" && @email == "dianaroji@yahoo.com")
  end
end