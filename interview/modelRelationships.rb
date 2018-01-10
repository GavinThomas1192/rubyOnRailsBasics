# User
#   has_and_belongs_to_many :meetings
#   has_many :action_items
#   has_many :agenda_items
#   has_many :comments  
# Meeting
#   has_and_belongs_to_many :users
#   has_many :agenda_items
#   has_many :action_items
# AgendaItem
#   belongs_to :user
#   belongs_to :meeting
#   has_many :comments, :as => :commentable 
# ActionItem
#   belongs_to :user
#   belongs_to :meeting
#   has_many :comments, :as => :commentable 
# Comment
#   belongs_to :commentable, :polymorphic => true 
#   belongs_to :user

# found here =>https://www.startuprocket.com/articles/how-to-design-and-prep-a-ruby-on-rails-model-architecture