package com.rappipay_demo.android_app.multiplatform.plugin

import com.rappipay_demo.android_app.multiplatform.plugin.channels.router.RouterChannel
import io.flutter.embedding.engine.plugins.FlutterPlugin

class MultiplatformDemoPlugin : FlutterPlugin {
    val channelChannel = RouterChannel()

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        binding.binaryMessenger.let {
            channelChannel.createChannel(it)
        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channelChannel.destroy()
    }
}