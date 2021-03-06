const { environment } = require('@rails/webpacker')
const erb = require('./loaders/erb')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Rails: '@rails/ujs'
  })
)

environment.loaders.prepend('erb', erb)
module.exports = environment
