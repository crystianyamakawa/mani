class Inbox < ActiveRecord::Base
  belongs_to :objeto, :polymorphic => true
end
