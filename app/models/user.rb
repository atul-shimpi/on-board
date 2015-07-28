class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_one :gender
  has_one :birth_date
  has_many :contacts, :autosave => true

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :role_id, presence: true
  validates :password, presence: true

  def full_name
    first_name + ' ' + last_name
  end
end
