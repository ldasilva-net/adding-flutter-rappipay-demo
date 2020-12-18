package com.rappipay_demo.android_app.multiplatform.embedding

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment

abstract class MultiplatformDemoActivity : AppCompatActivity(), MultiplatformDemoFragmentLifecycle {
    abstract fun currentNavHostFragment(): Fragment?

    protected fun currentMultiplatformFragment() : MultiplatformDemoFragment? {
        currentNavHostFragment()?.let { navHostFragment ->
            val fragment = navHostFragment.childFragmentManager.fragments[0]
            if (fragment is MultiplatformDemoFragment && fragment.isVisible) {
                return fragment
            }
        }
        return null
    }

    override fun onPostResume() {
        super.onPostResume()
        currentMultiplatformFragment()?.onPostResume()
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        currentMultiplatformFragment()?.onNewIntent(intent)
    }

    override fun onBackPressed() {
        onSupportNavigateUp()
        currentMultiplatformFragment()?.onBackPressed()
    }

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<String?>,
        grantResults: IntArray
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        currentMultiplatformFragment()?.onRequestPermissionsResult(
            requestCode,
            permissions,
            grantResults
        )
    }

    override fun onUserLeaveHint() {
        currentMultiplatformFragment()?.onUserLeaveHint()
    }

    override fun onTrimMemory(level: Int) {
        currentMultiplatformFragment()?.onTrimMemory(level)
    }

}