require 'ruhoh/client/client'

class BlogsController < ApplicationController
  Options = Struct.new(:title, :date, :ext, :verbose)
  def compile
    @payload = JSON.parse params[:payload]

    user_name = @payload["repository"]["owner"]["name"]
    user_email = @payload["repository"]["owner"]["email"]
    repo_name = @payload["repository"]["name"]
    repo_homepage = @payload["repository"]["homepage"]
    repo_url = @payload["repository"]["url"]

    user = User.find_or_create_by_name_and_email(user_name, user_email)
    repo = Repo.find_or_create_by_name(repo_name)
    repo.url, repo.homepage = repo_url, repo_homepage
    repo.save

    Dir.mktmpdir do |dir|
      Dir.chdir dir do
        g = Git.clone repo.url, repo.name
        Dir.chdir repo.name do
          Ruhoh::Client.new({
            :args => [ "compile", repo.target_dir ],
            :options => Options.new
          })
        end
      end
    end
  end
end
