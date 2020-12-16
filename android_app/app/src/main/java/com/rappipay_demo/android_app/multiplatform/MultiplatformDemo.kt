package com.rappipay_demo.android_app.multiplatform

import android.content.Context
import java.util.concurrent.ConcurrentLinkedQueue

object MultiplatformDemo {
    val aliveEngines = ConcurrentLinkedQueue<String>()
    val mainEngine : MultiplatformDemoEngine?
        get() = getEngineInstance(MULTIPLATFORM_DEMO_ENGINE_ID)

    fun initialize(
        context: Context
    ) {
        if (!engineInstanceExists(MULTIPLATFORM_DEMO_ENGINE_ID)) {
            startNewEngineInstance(context, MULTIPLATFORM_DEMO_ENGINE_ID)
        }
    }

    fun startNewEngineInstance(context: Context, engineId: String) = MultiplatformDemoEngine(context, engineId)

    fun getOrStartNewEngineInstance(context: Context, engineId: String) = getEngineInstance(engineId) ?: startNewEngineInstance(context, engineId)

    fun getEngineInstance(engineId: String) = MultiplatformDemoEngine.getInstance(engineId)

    fun engineInstanceExists(engineId: String) = MultiplatformDemoEngine.instanceExists(engineId)

    fun destroy() {
        aliveEngines.forEach {
            MultiplatformDemoEngine.getInstance(it)?.stop()
        }
    }

    const val MULTIPLATFORM_DEMO_ENGINE_ID = "MULTIPLATFORM_DEMO_ENGINE_ID"
}