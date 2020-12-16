package com.rappipay_demo.android_app.multiplatform.exceptions

class EngineAlreadyExistsException(engineId : String) : Exception("Engine '$engineId' already exists")