import { Title } from './components/Title'

var list = {
	items: []
}

export tag Todo

	def getCurrentTime
		var date = Date.new
		return "{date.getFullYear}.{date.getMonth+1}.{date.getDate}-{date.getHours}:{date.getMinutes}"

	def addItem
		return if !data:content
		list:items.push(content: data:content, createdAt: getCurrentTime, done: false)
		data:content = ''

	def toggleItem index
		list:items[index]:done = !list:items[index]:done

	def render
		<self[list]>
			<Title>
			<header>
				<input[data:content] :keyup.enter.addItem placeholder='here' css:margin-right='10px'>
				<button :click.addItem> 'Add TODO'
			<ul> for item,index in data:items
				<li :click=['toggleItem', index]>
					<span
						css:color="{item:done ? '#999' : '#000'}"
						css:text-decoration="{item:done ? 'line-through' : 'none'}"
					>
						item:content
						<span css:color='#999'> " ---@ {item:createdAt}"
