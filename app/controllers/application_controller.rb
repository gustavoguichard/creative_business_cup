#Encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  include AutoHtml

  helper_method :resgistration?

  def resgistration?
    Time.now < "2012-10-14 12:00:00 -0300" # 2012-10-14 12:00
  end

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
