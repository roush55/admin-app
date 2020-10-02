class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
#add validation to input
         has_one_attached  :cv
         validates :name, length: { minimum: 3}
         validates :mobile_number,length: {minimum: 9 }
         validates :cv, attached: true, content_type: { in: ['application/pdf' ,'application/msword'], message: 'Must be a PDF or a DOC file' }, size: { less_than: 10.megabytes , message: 'is not given between size' }
end
