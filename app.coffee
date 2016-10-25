# Set background color
Screen.backgroundColor = "#0055DD"

# Create PageComponent
page = new PageComponent 
	x: Align.center
	y: Align.center	
	width: 300
	borderRadius: 6
	scrollVertical: false

# Add pages
for i in [0...5]
	layer = new Layer 
		parent: page.content
		name: "Page #{i}"
		x: 210 * i
		backgroundColor: "#00AAFF"
		borderRadius: 6

# Style current page
page.currentPage.backgroundColor = "#FFF"

# Fade in the most centered page
page.onChange "currentPage", ->
	page.previousPage.animate 
		backgroundColor: "#00AAFF"
		options:
			time: 0.5

	page.currentPage.animate 
		backgroundColor: "#FFF"
		options:
			time: 0.5