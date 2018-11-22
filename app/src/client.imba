
var store = {
	title: ""
	items: [
		{ content: "Example Todo." }
	]
}

tag App

	def getCurrentTime
		Date()

	def addItem
		data:items.push(content: data:content, createdAt: getCurrentTime)
		data:content = ""

	def render
		<self.vbox>
			<header>
				<input[data:content] placeholder="New..." :keyup.enter.addItem css:margin-right='10px'>
				<button :tap.addItem> 'Add item'
			<ul> for item in data:items
				<li>
					<span> item:content
					<span> item:createdAt ? ' ---@' : ''
					<span css:color='#666'> item:createdAt

Imba.mount <App[store]>
