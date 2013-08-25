class App.Views.Content extends Backbone.View

	className : "row"

	template : HandlebarsTemplates['app/templates/content']

	render : ->
		@$el.html(@template())
		@renderEmptyView()
		@

	renderEmptyView : ->
		emptyView = new App.Views.Empty()
		@$('#main-area').html(emptyView.render().el)		