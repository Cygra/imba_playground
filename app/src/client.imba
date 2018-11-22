
var store = {
	items: []
}

tag App

	def getCurrentTime
		Date()

	def addItem
		return if !data:content

		data:items.push(content: data:content, createdAt: getCurrentTime, done: false)
		data:content = ""

	def done index
		data:items[index]:done = true

	def render
		<self.vbox>
			<header>
				<input[data:content] placeholder="New..." :keyup.enter.addItem css:margin-right='10px'>
				<button :click.addItem> 'Add item'
			<ul> for item,index in data:items
				<li :click=['done', index]>
					<span
						css:color="{item:done ? '#999' : '#000'}"
						css:text-decoration="{item:done ? 'line-through' : 'none'}"
					>
						"{item:content} ---@ {item:createdAt}"

Imba.mount <App[store]>
