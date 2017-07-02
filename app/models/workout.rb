class Workout < ActiveRecord::Base
  belongs_to :hopper
  #chooses movements randomly based on hopper model/template

  def package_nicely?
    @workout =
    #interpolate "#{style}:"
    # use each method??
    #interpolate "#{rep_range} #{movement}"
    # "ARMAP 8:"
    # 10 Clean
    # 15 pushup
    # 25 Wallball
  end



end
