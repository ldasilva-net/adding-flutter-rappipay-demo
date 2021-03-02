package com.rappipay_demo.android_app.multiplatform.embedding

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentTransaction
import com.rappipay_demo.android_app.R
import com.rappipay_demo.android_app.multiplatform.MultiplatformDemoEngine
import com.rappipay_demo.android_app.multiplatform.exceptions.FragmentLifecycleNotImplementedException
import com.rappipay_demo.android_app.multiplatform.plugin.channels.router.models.RouterArgs
import com.rappipay_demo.android_app.multiplatform.plugin.channels.router.models.RouterResult

abstract class MultiplatformDemoFragment : Fragment(),
    MultiplatformDemoFragmentLifecycle {

    abstract val multiplatformEngine: MultiplatformDemoEngine

    protected val multiplatformComponent by lazy { multiplatformEngine.buildNewComponent() }

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(
            R.layout.multiplatformdemo_fragment,
            container,
            false
        )
    }

    override fun onAttach(context: Context) {
        super.onAttach(context)
        if ((context as? MultiplatformDemoFragmentLifecycle) == null) {
            throw FragmentLifecycleNotImplementedException()
        }
    }

    protected fun configureComponent(routerArgs: RouterArgs, fragmentId: Int = R.id.fragment_container) {
        val transaction: FragmentTransaction = childFragmentManager.beginTransaction()
        multiplatformComponent.let {
            transaction.replace(fragmentId, it.getFragment()).commit()
        }

        multiplatformEngine.router?.let {
            it.onReady {
                it.navigateTo(routerArgs)
                it.setReturnToPlatformHandler { this.returnToPlatform(it) }
            }
        }
    }

    abstract fun returnToPlatform(routerResult: RouterResult?)

    // region MultiplatformDemoFragmentLifecycle
    override fun onPostResume() {
        multiplatformComponent.onPostResume()
    }

    override fun onNewIntent(intent: Intent) {
        multiplatformComponent.onNewIntent(intent)
    }

    override fun onBackPressed() {
        multiplatformComponent.onBackPressed()
    }

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<String?>,
        grantResults: IntArray
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)

        multiplatformComponent.onRequestPermissionsResult(
            requestCode,
            permissions,
            grantResults
        )
    }

    override fun onUserLeaveHint() {
        multiplatformComponent.onUserLeaveHint()
    }

    override fun onTrimMemory(level: Int) {
        multiplatformComponent.onTrimMemory(level)
    }
    // endregion
}