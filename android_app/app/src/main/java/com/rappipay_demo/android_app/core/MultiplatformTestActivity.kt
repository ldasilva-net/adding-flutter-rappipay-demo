package com.rappipay_demo.android_app

import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.navigation.NavController
import androidx.navigation.findNavController
import com.rappipay_demo.android_app.fragments.MultiplatformScreen1Fragment
import com.rappipay_demo.android_app.multiplatform.embedding.MultiplatformDemoFragment
import com.rappipay_demo.android_app.multiplatform.embedding.MultiplatformDemoFragmentLifecycle
import com.rappipay_demo.android_app.multiplatform.MultiplatformDemo

class MultiplatformTestActivity : AppCompatActivity(), ToolbarListener,
    MultiplatformScreen1Fragment.MultiplatformScreen1Listener, MultiplatformDemoFragmentLifecycle {

    fun currentNavController(): NavController = findNavController(R.id.navHostFragment)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_multiplatform_test)

        loadMultiplatformDemo()
        setupToolbar()
    }

    override fun onSupportNavigateUp(): Boolean {
        return when (currentNavController().currentDestination?.id) {
            R.id.multiplatform_screen1_fragment -> {
                finish()
                false
            }
            else -> currentNavController().navigateUp()
        }
    }

    private fun currentMultiplatformFragment() : MultiplatformDemoFragment? {
        supportFragmentManager.findFragmentById(R.id.navHostFragment)?.let { navHostFragment ->
            val fragment = navHostFragment.childFragmentManager.fragments[0]
            if (fragment is MultiplatformDemoFragment && fragment.isVisible) {
                return fragment
            }
        }
        return null
    }

    private fun loadMultiplatformDemo() {
        applicationContext?.let {
            MultiplatformDemo.initialize(it)
        }
    }

    private fun setupToolbar() {
        setSupportActionBar(findViewById(R.id.navToolbar))
        supportActionBar?.setDisplayHomeAsUpEnabled(true)
        supportActionBar?.setDisplayShowTitleEnabled(false)
    }

    // region ToolbarListener
    override fun showToolbar() {
        supportActionBar?.show()
    }

    override fun hideToolbar() {
        supportActionBar?.hide()
    }
    // endregion

    // region MultiplatformScreen1Listener
    override fun goToTest1() {
        if (!MultiplatformDemo.engineInstanceExists(MultiplatformDemo.MULTIPLATFORM_DEMO_ENGINE_ID)) {
            MultiplatformDemo.startNewEngineInstance(applicationContext, MultiplatformDemo.MULTIPLATFORM_DEMO_ENGINE_ID)
        }
        currentNavController().navigate(R.id.action_to_screen2)
    }

    override fun goToTest2() {
        if (!MultiplatformDemo.engineInstanceExists(NEW_ENGINE_ID)) {
            MultiplatformDemo.startNewEngineInstance(applicationContext, NEW_ENGINE_ID)
        }
        currentNavController().navigate(R.id.action_to_screen3)
    }
    // endregion

    // region MultiplatformDemoFragmentLifecycle
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
    // endregion

    companion object {
        const val NEW_ENGINE_ID = "testing_new_engine"
    }
}

interface ToolbarListener {

    fun showToolbar()

    fun hideToolbar()

}
