package com.rappipay_demo.android_app.multiplatform.plugin.channels.router

import com.google.gson.Gson
import com.rappipay_demo.android_app.multiplatform.plugin.channels.router.models.RouterArgs
import com.rappipay_demo.android_app.multiplatform.plugin.channels.router.models.RouterResult
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class RouterChannel : MethodChannel.MethodCallHandler {

    private lateinit var routerChannel: MethodChannel
    private var isChannelReady = false
    private var onReadyHandler: () -> Unit = {}
    private var returnToPlatformHandler: (RouterResult?) -> Unit = {}

    fun createChannel(messenger: BinaryMessenger) {
        routerChannel = MethodChannel(messenger, ROUTER_CHANNEL_ID)
        routerChannel.setMethodCallHandler(this)
    }

    override fun onMethodCall(
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        when (methodCall.method) {
            REPORT_CHANNEL_IS_READY -> {
                isChannelReady = true
                onReadyHandler()
            }
            RETURN_TO_PLATFORM -> {
                val routerResultString = methodCall.argument<String>(ROUTER_RESULT)
                var routerResult = Gson().fromJson(routerResultString, RouterResult::class.java)
                returnToPlatformHandler(routerResult)
            }
            else -> result.notImplemented()
        }
    }

    fun onReady(handler: () -> Unit) {
        this.onReadyHandler = handler
        if (isChannelReady) {
            this.onReadyHandler()
        }
    }

    fun navigateTo(routerArgs: RouterArgs) = routerChannel?.invokeMethod(NAVIGATE_TO, Gson().toJson(routerArgs))

    fun setReturnToPlatformHandler(handler: (RouterResult?) -> Unit) {
        this.returnToPlatformHandler = handler
    }

    fun destroy() = routerChannel.setMethodCallHandler(null)

    companion object {
        const val ROUTER_CHANNEL_ID = "com.rappipay_demo/router"

        const val REPORT_CHANNEL_IS_READY = "reportChannelIsReady"
        const val NAVIGATE_TO = "navigateTo"
        const val RETURN_TO_PLATFORM = "returnToPlatform"

        const val ROUTER_RESULT = "routerResult"
    }
}

