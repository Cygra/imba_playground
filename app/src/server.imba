var express = require 'express'
var server = express()

server.use(express.static('./app/root'))

server.get '/' do |req,res|
	var html = <html>
		<head>
			<title> "Imba - Hello World"
			<meta charset="utf-8">
		<body>
			<script src="/client.js">

	return res.send html.toString

var port = process:env.PORT or 8080

var server = server.listen(port) do
	console.log 'server is running on port ' + port
