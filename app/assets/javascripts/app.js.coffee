App = Backbone.View.extend({
  events:
    "click .top-menu .dropdown .sub-menu a' ": "process"

  initialize: ->
    _.bindAll(this)

  process: (event)->
    link = $(event.target)
    section = link.parents('li.dropdown').data('section')
    $("section##{section} .info-menu a.#{link.data('article')}").click()
})

jQuery ->
  document = $(window.document)
  $menu = $('#menu')
  $secondSection = $('#national')
  window.view = new App({el: $("body") });

  $(document).scroll ->
      sTop = document.scrollTop()
      if(sTop >= $secondSection.offset().top - 100)
        $menu.addClass('top-attached')
      else
        $menu.removeClass('top-attached')
