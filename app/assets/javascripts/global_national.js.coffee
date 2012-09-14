CommumGlobalNAtional = Backbone.View.extend({
  events:
    "click .info-menu a": "processClick",

  initialize: ->
    _.bindAll(this)
    this.menu = this.$('.info-menu')

  processClick: (event)->
    link = $(event.target)
    @disableAllMenus()
    @selectItem(link)
    @hideAllArticles()
    @showRelatedArticle(link)

    false

  disableAllMenus: ->
    @menu.find('li').each ->
      $(this).removeClass('active')
      true

  selectItem: (item)->
    item.parents('li').addClass('active')

  hideAllArticles: ->
    this.$('article').each ->
      $(this).hide()
      true

  showRelatedArticle: (link)->
    article = link.data('article')
    this.$('article.'+article).fadeIn('slow');
})

Global = CommumGlobalNAtional.extend({
  el: "section#global"
})

National = CommumGlobalNAtional.extend({
  el: "section#national"
})

jQuery ->
  window.view.national = new National();
  window.view.national = new Global();

