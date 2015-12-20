class Usuario < ActiveRecord::Base
  authenticates_with_sorcery!
  
  validates :email, :presence => { :message => " es un Campo Obligatorio" }
  validates :email, :uniqueness =>  { message: "  Ya fue registrado" }
  validates_confirmation_of :password
  validates :password, :presence => { :message => " es un Campo Obligatorio" }

end
