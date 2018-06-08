class School < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
validates :name, presence: true
validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}
before_save :format_lay_lng

  def self.filter(params)
    out = []
    if params[:status].blank?
      out = School.all

    else
       out = School.where(['status = ?', params[:status]])
    end

    return out.order("name ASC")
  end

  private
  def format_lay_lng
    self.latitude = latitude.to_f
    self.longitude = longitude.to_f
  end
end
