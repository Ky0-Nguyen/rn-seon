package nz.co.bankroll.seon

import com.facebook.react.bridge.Promise
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule
import com.facebook.react.bridge.ReactMethod
import io.seon.androidsdk.service.SeonBuilder

class SeonModule(reactContext: ReactApplicationContext) : ReactContextBaseJavaModule(reactContext) {

  override fun getName(): String {
    return "Seon"
  }

  @ReactMethod
  fun init(promise: Promise) {
    SeonBuilder.getInstance().withContext(reactApplicationContext);
    promise.resolve(true);
  }

  @ReactMethod
  fun sessionId(sessionId: String, promise: Promise) {
    SeonBuilder.getInstance().withSessionId(sessionId);
    promise.resolve(true);
  }

  @ReactMethod
  fun logging(enabled: Boolean, promise: Promise) {
    SeonBuilder.getInstance().setLoggingEnabled(enabled);
    promise.resolve(true);
  }

  @ReactMethod
  fun fingerprint(promise: Promise) {
    val fingerprint = SeonBuilder.getInstance().fingerprintBase64;
    promise.resolve(fingerprint)
  }

}
