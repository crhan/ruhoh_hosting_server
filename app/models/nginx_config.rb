class NginxConfig < ActiveRecord::Base
  attr_accessible :server_name, :repo
  belongs_to :repo
  delegate :publish_url, :target_dir, :to => :repo, :prefix => true

  def root
    repo_target_dir
  end

  def to_s
    <<HERE
server{
  listen 80;
  server_name #{server_name};
  index index.html;
  root #{root};
  access_log off;
}
HERE
  end

  def write
    fn = Rails.root.join("nginx_config","#{repo_publish_url}.conf")
    File.open(fn, "w"){|f|
      f.puts self.to_s
    }
  end
end
