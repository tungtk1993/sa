class Resume < ActiveRecord::Base
  belongs_to :User
  belongs_to :job
  has_attached_file :cv
  validates_attachment_content_type :cv, :content_type => [ 'application/msword',"application/pdf", 'application/vnd.openxmlformats-officedocument.wordprocessingml.document' ], :attachment_content_type => ["is invalid"],:attachment => ["content type is invalid"]
  has_attached_file :cv
  validates_attachment_presence :cv
end
