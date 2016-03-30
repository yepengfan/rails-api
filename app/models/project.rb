class Project < ActiveRecord::Base
  def self.import json
    @project = Project.new
    @project['name'] = json['name']
    @project.save
  end
end
