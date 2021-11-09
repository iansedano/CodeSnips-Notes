```
npm init
git init
```

gitignore
```
node_modules
build
```

These are the only two runtime dependencies needed
```
npm install react react-dom --save
```

Babel - to make your code more intelligible

```
npm install @babel/core @babel/preset-env @babel/preset-react --save-dev
```

Babel config

add .babelrc file

```json
"babel" : {
    "presets": [
        "@babel/preset-env",
        "@babel/preset-react"
    ]
}
```

or as property in package.json

Bundler / webpack

```
npm install webpack webpack-cli webpack-dev-server babel-loader css-loader style-loader html-webpack-plugin --save-dev
```

Simple webpack.config.js

```js
const path = require('path');
const HtmlWebPackPlugin = require('html-webpack-plugin');

module.exports = {
  output: {
    path: path.resolve(__dirname, 'build'),
    filename: 'bundle.js',
  },
  resolve: {
    modules: [path.join(__dirname, 'src'), 'node_modules'],
    alias: {
      react: path.join(__dirname, 'node_modules', 'react'),
    },
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
        },
      },
      {
        test: /\.css$/,
        use: [
          {
            loader: 'style-loader',
          },
          {
            loader: 'css-loader',
          },
        ],
      },
    ],
  },
  plugins: [
    new HtmlWebPackPlugin({
      template: './src/index.html',
    }),
  ],
};
```

Then create your src folder and add index.html, index.js, and components.

add the start and build scripts in package.json  

```
"scripts": {
    "start": "webpack-dev-server --mode=development --open --hot",
    "build": "webpack --mode=production"
  }
```

https://dev.to/nikhilkumaran/don-t-use-create-react-app-how-you-can-set-up-your-own-reactjs-boilerplate-43l0

