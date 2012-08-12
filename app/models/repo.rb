class Repo < ActiveRecord::Base
  attr_accessible :homepage, :name, :url
  has_one :nginx_config

  def target_dir
    Rails.root.join("blogs", publish_url)
  end

  def publish_url
    return homepage if homepage
    name
  end
end
