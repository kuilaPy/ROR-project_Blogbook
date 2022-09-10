const { environment } = require('@rails/webpacker')

const webpack = require("webpack")

environment.plugins.append("provide",new webpack, provideplugin({
 $: 'jquery', jQuery: 'jquery',
popper: ['popper.js', 'default']}))
module.exports = environment
