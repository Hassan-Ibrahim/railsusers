class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  enum role: [:Manager, :QA, :Developer]

  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :Developer
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         has_many :projects
end
