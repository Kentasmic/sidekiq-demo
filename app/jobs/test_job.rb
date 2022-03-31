class TestJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Rails.logger.info "Test Job ran at #{I18n.l Time.current, format: :long}"
  end
end
