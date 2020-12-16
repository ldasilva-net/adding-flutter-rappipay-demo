package com.rappipay_demo.android_app.multiplatform.embedding

import android.content.Intent

interface MultiplatformDemoFragmentLifecycle {
    fun onPostResume()

    fun onNewIntent(intent: Intent)

    fun onBackPressed()

    fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<String?>,
        grantResults: IntArray
    )

    fun onUserLeaveHint()

    fun onTrimMemory(level: Int)
}