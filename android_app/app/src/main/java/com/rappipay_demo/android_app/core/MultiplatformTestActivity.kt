package com.rappipay_demo.android_app.core

import android.os.Bundle
import androidx.navigation.NavController
import androidx.navigation.findNavController
import com.rappipay_demo.android_app.R
import com.rappipay_demo.android_app.core.fragments.MultiplatformScreen1Fragment
import com.rappipay_demo.android_app.multiplatform.MultiplatformDemo
import com.rappipay_demo.android_app.multiplatform.embedding.MultiplatformDemoActivity

class MultiplatformTestActivity : MultiplatformDemoActivity(), ToolbarListener,
    MultiplatformScreen1Fragment.MultiplatformScreen1Listener {

    fun currentNavController(): NavController = findNavController(R.id.navHostFragment)

    override fun currentNavHostFragment() = supportFragmentManager.findFragmentById(R.id.navHostFragment)

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

    companion object {
        const val NEW_ENGINE_ID = "testing_new_engine"
    }
}

interface ToolbarListener {

    fun showToolbar()

    fun hideToolbar()

}
