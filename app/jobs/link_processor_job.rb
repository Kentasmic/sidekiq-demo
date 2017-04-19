class LinkProcessorJob < ApplicationJob
  queue_as :default

  def perform(link)
    document = Nokogiri::HTML(open(link.url))
    link.update(
      title:       document.css('title').text,
      description: document.at('meta[name="description"]')['content']
    )
  end
end
