class Repo < ActiveRecord::Base
  attr_accessible :homepage, :name, :url

  def target_dir
    File.join(Dir.tmpdir, publish_url)
  end

  def publish_url
    return homepage if homepage
    name
  end
end
