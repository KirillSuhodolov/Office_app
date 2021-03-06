class User < ActiveRecord::Base
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :role, :organization_id, :subdivision_id, :id

  validates_presence_of :email, :password, :password_confirmation, :name

  has_many :reports
  belongs_to :organization
  belongs_to :subdivision

  ROLES1 = %w[manager employe]
  ROLES2 = %w[employe]

  #def role_symbols
  #  [role.to_sym]
  #end

end
