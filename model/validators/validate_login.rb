require 'db_conection'
class ValidateLogin


  attr_accesor :access

  def initialize
    @correct_email = false
    @correct_password = false
    @access = false
    @existing_user
  end

  def validate_information(email, password)
    validate_email(email)
    validate_password(password)
  end

  def determine_access
  end

  private
  def validate_email(email)

  end

  def validate_password(password)
    password = Digest::SHA2.hexdigest(password)
    password_database = return_element(@db_conection.query("SELECT `password` FROM `users` WHERE `id` = '#{id}'"), 'password')

    if password_database != password
      return false
    else
      @existing_user= user.new(db_conection, id)
      return true
    end
  end

  def return_element(element, name)
    element.each do |i|
      return i[name]
    end
  end


end


