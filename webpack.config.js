var webpack = require('webpack');
module.exports = {
	module: {
		rules: [
			{
				test: /\.imba$/,
				use: [
					{ loader: 'babel-loader' },
					{ loader: 'imba/loader' }
				]
			},
			{
				test: /\.js$/,
				use: {
					loader: 'babel-loader',
					options: {
						presets: ['babel-preset-env']
					}
				},
				exclude: '/node_modules/'
			}
		]
	},
	resolve: {
		extensions: [".imba",".js", ".json"]
	},
	entry: "./app/app.imba",
	output: {  path: __dirname + '/_dist', filename: "app.js" },
	plugins: [
		new webpack.optimize.UglifyJsPlugin({
			compress: {
				drop_console: true,
			}
		}),
	]
}
