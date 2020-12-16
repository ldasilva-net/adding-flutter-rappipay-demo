package com.rappipay_demo.android_app.fragments

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.FrameLayout
import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentTransaction
import com.rappipay_demo.android_app.R
import com.rappipay_demo.android_app.ToolbarListener
import com.rappipay_demo.android_app.multiplatform.embedding.MultiplatformDemoFragment
import com.rappipay_demo.android_app.multiplatform.MultiplatformDemo
import com.rappipay_demo.android_app.multiplatform.MultiplatformDemoComponent
import com.rappipay_demo.android_app.multiplatform.MultiplatformDemoEngine
import com.rappipay_demo.android_app.multiplatform.embedding.MultiplatformDemoFragmentLifecycle
import com.rappipay_demo.android_app.multiplatform.exceptions.FragmentLifecycleNotImplementedException
import com.rappipay_demo.android_app.multiplatform.plugin.MultiplatformDemoPlugin
import com.rappipay_demo.android_app.multiplatform.plugin.channels.router.models.RouterArgs
import com.rappipay_demo.android_app.multiplatform.plugin.channels.router.models.RouterResult

class MultiplatformScreen3Fragment : Fragment(),
    MultiplatformDemoFragmentLifecycle {

    private var toolbarListener: ToolbarListener? = null

    private val multiplatformComponents = ArrayList<MultiplatformDemoComponent>()

    override fun onAttach(context: Context) {
        super.onAttach(context)

        if ((context as? MultiplatformDemoFragmentLifecycle) == null) {
            throw FragmentLifecycleNotImplementedException()
        }

        toolbarListener = context as? ToolbarListener
    }

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(
            R.layout.fragment_multiplatform_screen3,
            container,
            false
        )
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        configureToolbar()
        initLoaders()
    }

    override fun onResume() {
        super.onResume()
        configureComponent(R.id.fragment_container_1, PARTIAL_VIEW_1_ENGINE_ID,"/partialView1Test")
        configureComponent(R.id.fragment_container_2, PARTIAL_VIEW_2_ENGINE_ID,"/partialView2Test")
    }

    private fun configureToolbar() {
        toolbarListener?.showToolbar()
    }

    private fun initLoaders() {
        childFragmentManager.beginTransaction().replace(R.id.fragment_container_1, Fragment(R.layout.fragment_loader) ).commit()
        childFragmentManager.beginTransaction().replace(R.id.fragment_container_2, Fragment(R.layout.fragment_loader)).commit()
    }

    private fun configureComponent(fragmentId: Int, engineId: String, path: String, ) {
        context?.let {
            val multiplatformEngine = MultiplatformDemo.getOrStartNewEngineInstance(it, engineId)
            val multiplatformComponent = multiplatformEngine.buildNewComponent()
            multiplatformComponents.add(multiplatformComponent)

            multiplatformEngine.router?.let {
                it.onReady {
                    it.navigateTo(RouterArgs(path))

                    val transaction: FragmentTransaction = childFragmentManager.beginTransaction()
                    transaction.replace(fragmentId, multiplatformComponent.getFragment()).commit()
                }
            }
        }
    }

    override fun onDetach() {
        super.onDetach()
        toolbarListener = null
    }

    // region MultiplatformDemoFragmentLifecycle
    override fun onPostResume() {
        multiplatformComponents.forEach{
            it.onPostResume()
        }
    }

    override fun onNewIntent(intent: Intent) {
        multiplatformComponents.forEach{
            it.onNewIntent(intent)
        }
    }

    override fun onBackPressed() {
        multiplatformComponents.forEach{
            it.onBackPressed()
        }
    }

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<String?>,
        grantResults: IntArray
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)

        multiplatformComponents.forEach{
            it.onRequestPermissionsResult(
                requestCode,
                permissions,
                grantResults
            )
        }
    }

    override fun onUserLeaveHint() {
        multiplatformComponents.forEach{
            it.onUserLeaveHint()
        }
    }

    override fun onTrimMemory(level: Int) {
        multiplatformComponents.forEach{
            it.onTrimMemory(level)
        }
    }
    // endregion

    companion object {
        const val PARTIAL_VIEW_1_ENGINE_ID = "PARTIAL_VIEW_1_ENGINE_ID"
        const val PARTIAL_VIEW_2_ENGINE_ID = "PARTIAL_VIEW_2_ENGINE_ID"
    }
}