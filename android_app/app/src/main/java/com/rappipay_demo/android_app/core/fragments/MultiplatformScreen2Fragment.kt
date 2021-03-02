package com.rappipay_demo.android_app.core.fragments

import android.content.Context
import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.navigation.fragment.findNavController
import com.rappipay_demo.android_app.core.ToolbarListener
import com.rappipay_demo.android_app.multiplatform.embedding.MultiplatformDemoFragment
import com.rappipay_demo.android_app.multiplatform.MultiplatformDemo
import com.rappipay_demo.android_app.multiplatform.MultiplatformDemoRoutes
import com.rappipay_demo.android_app.multiplatform.plugin.channels.router.models.RouterArgs
import com.rappipay_demo.android_app.multiplatform.plugin.channels.router.models.RouterResult

class MultiplatformScreen2Fragment : MultiplatformDemoFragment() {

    override val multiplatformEngine = MultiplatformDemo.mainEngine!!

    private var toolbarListener: ToolbarListener? = null

    override fun onAttach(context: Context) {
        super.onAttach(context)
        toolbarListener = context as? ToolbarListener
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        configureToolbar()
        configureComponent(RouterArgs(MultiplatformDemoRoutes.HISTORY_WARMUP_PAGE, args = "Back to platform!"))
    }

    private fun configureToolbar() {
        toolbarListener?.hideToolbar()
    }

    override fun returnToPlatform(routerResult: RouterResult?) {
        routerResult?.let {
            Toast.makeText(
                context,
                it.result,
                Toast.LENGTH_SHORT
            ).show()
        }
        findNavController().navigateUp()
    }

    override fun onDetach() {
        super.onDetach()
        toolbarListener = null
    }
}