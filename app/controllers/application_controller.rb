#Encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  include AutoHtml

  # before_filter do
  #   if request.url =~ /creativebusinesscupbrasil\.com\.br/
  #     raise "not yet!"
  #   end
  # end

  def index_page
    @the_event = auto_html(Event.first.text){ html_escape; simple_format } rescue nil
    @committee = Profile.curators
  end

  def video_embed link
    auto_html(link) do
      html_escape
      youtube width: 925, height: 525, wmode: "opaque"
      vimeo width: 925, height: 525
    end
  end
end
