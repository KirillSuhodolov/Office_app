class User < ActiveRecord::Base
  #before_create :create_role
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :role


  has_many :repots
  belongs_to :organization
  belongs_to :subdivision

  ROLES = %w[manager employe]

  def role_symbols
    [role.to_sym]
  end

end
