import 'imba-router'
import { Todo } from './Todo'

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
          <a route-to='/imba_playground/todo'> 'Todo'

      <Todo route='/imba_playground/todo'>

Imba.mount <App>
