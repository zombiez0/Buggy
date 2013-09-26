class App.Views.Content extends Backbone.View

	className : "row"

	template : HandlebarsTemplates['app/templates/content']

	render : ->
		@$el.html(@template())
		@renderEmptyView()
		@renderProjectsView()
		@

	renderEmptyView : ->
		emptyView = new App.Views.Empty()
		@$('#main-area').html(emptyView.render().el)

	renderProjectsView : ->
		projectsView = new App.Views.Projects()
		@$('#sidebar-main').html(projectsView.render().el)			