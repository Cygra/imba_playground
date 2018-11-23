import 'imba-router'
import { Todo } from './src/Todo'

tag App
	def render
		<self>
			<p>
				'Web playground built on '
				<a href='http://imba.io/'>
					'imba'
				'. Source code see '
				<a href='https://github.com/Cygra/imba_playground'>
					'Github'
				'.'
			<ul>
				<li>
					<a route-to='/todo'> 'Todo'

			<Todo route='/todo'>

Imba.mount <App>
