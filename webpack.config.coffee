path = require('path')

module.exports =
	entry: './src/index.coffee'
	watch: true
	output:
		filename: 'index.js'
		path: path.resolve(__dirname, 'dist')
	module:
		rules: [
			{
				test: /\.coffee$/,
				use: [
					{
						loader: 'babel-loader'
						options:
							presets: ['env']
					}
					{ 
						loader: 'coffee-loader'
					}
				]
			}
		]
