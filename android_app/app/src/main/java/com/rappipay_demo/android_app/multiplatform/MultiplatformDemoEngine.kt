package com.rappipay_demo.android_app.multiplatform

import android.content.Context
import com.rappipay_demo.android_app.multiplatform.exceptions.EngineAlreadyExistsException
import com.rappipay_demo.android_app.multiplatform.plugin.MultiplatformDemoPlugin
import io.flutter.embedding.android.FlutterFragment
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor

class MultiplatformDemoEngine(private val engineId: String, private val flutterEngine: FlutterEngine) {
    constructor(context: Context, engineId: String) : this(
        engineId, createFlutterEngine(
            context,
            engineId
        )
    )

    private val currentMultiplatformDemoPlugin: MultiplatformDemoPlugin? by lazy {
        flutterEngine.plugins?.get(MultiplatformDemoPlugin::class.java) as MultiplatformDemoPlugin?
    }

    val router
        get() = currentMultiplatformDemoPlugin?.channelChannel

    fun buildNewComponent() : MultiplatformDemoComponent {
        val flutterFragment : FlutterFragment = FlutterFragment.withCachedEngine(engineId).build()
        return MultiplatformDemoComponent(flutterFragment)
    }

    fun stop() {
        flutterEngine.destroy()
        FlutterEngineCache.getInstance().remove(engineId)
        MultiplatformDemo.aliveEngines.remove(engineId)
    }

    companion object {
        private fun createFlutterEngine(context: Context, engineId: String) : FlutterEngine {
            if (instanceExists(engineId)) {
                throw EngineAlreadyExistsException(engineId)
            }

            val newFlutterEngine = FlutterEngine(context)

            newFlutterEngine.dartExecutor.executeDartEntrypoint(
                DartExecutor.DartEntrypoint.createDefault()
            )

            FlutterEngineCache
                .getInstance()
                .put(engineId, newFlutterEngine)

            MultiplatformDemo.aliveEngines.add(engineId)

            newFlutterEngine.plugins.add(MultiplatformDemoPlugin())

            return newFlutterEngine
        }

        fun getInstance(engineId: String) : MultiplatformDemoEngine? {
            return FlutterEngineCache.getInstance().get(engineId)?.let { flutterEngine ->
                MultiplatformDemoEngine(engineId, flutterEngine)
            }
        }

        fun instanceExists(engineId: String) = FlutterEngineCache.getInstance().contains(engineId)
    }
}