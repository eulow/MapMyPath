# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string           not null
#  first_name      :string           not null
#  last_name       :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  img_url         :string           default("https://s3.us-east-2.amazonaws.com/mapmyrun-dev/default_avatar.png")
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :email, :session_token, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }

  attr_reader :password

  after_initialize :ensure_session_token

  has_many :paths, dependent: :destroy
  has_many :comments,
    class_name: 'Comment',
    primary_key: :id,
    foreign_key: :author_id,
    dependent: :destroy


  def friends
    User
      .joins('JOIN relationships ON relationships.user_one_id = users.id OR relationships.user_two_id = users.id')
      .where("relationships.status = '1' AND users.id != ?", self.id).includes(:paths)
  end

  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    return nil unless user && user.valid_password?(password)
    user
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def valid_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end

  private

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end

end
