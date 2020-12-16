package com.rappipay_demo.android_app.multiplatform.plugin.channels.router.models

import com.google.gson.annotations.SerializedName

data class RouterArgs(
    @SerializedName("path") val path: String,
    @SerializedName("replace") val replace: Boolean = false,
    @SerializedName("clearStack") val clearStack: Boolean = false,
    @SerializedName("args") val args: String? = null
)