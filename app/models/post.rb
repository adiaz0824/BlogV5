class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy

# // =========================================================================================
# Validators to ensure the title of the post is there and meets minimum length, same for body
# // =========================================================================================
	validates :title, presence: true, length: {minimum: 5}
	validates :body, presence: true
end
