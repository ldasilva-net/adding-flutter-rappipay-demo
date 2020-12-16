package com.rappipay_demo.android_app.fragments

import android.content.Context
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.rappipay_demo.android_app.R
import com.rappipay_demo.android_app.ToolbarListener
import com.rappipay_demo.android_app.multiplatform.MultiplatformDemo

class MultiplatformScreen1Fragment : Fragment() {

    private var listener: MultiplatformScreen1Listener? = null

    private var toolbarListener: ToolbarListener? = null

    override fun onAttach(context: Context) {
        super.onAttach(context)
        toolbarListener = context as? ToolbarListener
        listener = context as? MultiplatformScreen1Listener
    }

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(
            R.layout.fragment_multiplatform_screen1,
            container,
            false
        )
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        bindView()

        configureToolbar()
    }

    private fun bindView() {
        (getView()?.findViewById(R.id.button_test1) as Button).setOnClickListener {
            listener?.goToTest1()
        }

        (getView()?.findViewById(R.id.button_test2) as Button).setOnClickListener {
            listener?.goToTest2()
        }

        (getView()?.findViewById(R.id.button_test3) as Button).setOnClickListener {
            MultiplatformDemo.destroy()
            Toast.makeText(
                context,
                "All engines were stopped",
                Toast.LENGTH_SHORT
            ).show()
        }
    }

    private fun configureToolbar() {
        toolbarListener?.hideToolbar()
    }

    override fun onDetach() {
        super.onDetach()
        listener = null
        toolbarListener = null
    }

    interface MultiplatformScreen1Listener {
        fun goToTest1()
        fun goToTest2()
    }
}