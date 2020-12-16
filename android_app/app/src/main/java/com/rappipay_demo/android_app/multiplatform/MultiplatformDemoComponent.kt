package com.rappipay_demo.android_app.multiplatform

import android.content.Intent
import androidx.fragment.app.Fragment
import io.flutter.embedding.android.FlutterFragment

class MultiplatformDemoComponent(private val flutterFragment : FlutterFragment) {
    fun getFragment() = flutterFragment as Fragment

    fun onPostResume() {
        flutterFragment.onPostResume()
    }

    fun onNewIntent(intent: Intent) {
        flutterFragment.onNewIntent(intent)
    }

    fun onBackPressed() {
        flutterFragment.onBackPressed()
    }

    fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<String?>,
        grantResults: IntArray
    ) {
        flutterFragment.onRequestPermissionsResult(
            requestCode,
            permissions,
            grantResults
        )
    }

    fun onUserLeaveHint() {
        flutterFragment.onUserLeaveHint()
    }

    fun onTrimMemory(level: Int) {
        flutterFragment.onTrimMemory(level)
    }
}