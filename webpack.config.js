module.exports = {
	module: {
		rules: [
			{
				test: /\.imba$/,
				loader: 'imba/loader',
			}
		]
	},
	resolve: {
		extensions: [".imba",".js", ".json"]
	},
	entry: "./app/app.imba",
	output: {  path: __dirname + '/_dist', filename: "app.js" }
}
