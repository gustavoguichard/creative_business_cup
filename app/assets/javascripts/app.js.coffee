App = Backbone.View.extend({
  events:
    "click .nav a.speakers": "active_speakers_tab",
    "click .nav a.workshops": "active_workshops_tab"

  active_speakers_tab: ->
    $('.schedule .profiles a.talks_tab').click()

  active_workshops_tab: ->
    $('.schedule .profiles a.workshops_tab').click()
})

jQuery ->
  document = $(window.document)
  $menu = $('#menu')
  $secondSection = $('#national')
  window.view = new App({el: $("body") });

  $(document).scroll ->
      sTop = document.scrollTop()
      if(sTop >= $secondSection.offset().top - 30)
        $menu.addClass('top-attached')
      else
        $menu.removeClass('top-attached')