class JobsController < ApplicationController
  def create
    10.times do
      TestJob.set(wait: 1.second).perform_later
    end
  end
end
