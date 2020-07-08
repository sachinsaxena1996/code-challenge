class Company < ApplicationRecord
  has_rich_text :description

  validate :email_domain
   
  def email_domain
  	return if email.blank?
  	domain = self.email.scan(/(?<=@)([^\s]+)(?=\s|$)/).first
    errors.add(:email, "Improper domain in email") unless domain.first == 'getmainstreet.com'
  end
end
