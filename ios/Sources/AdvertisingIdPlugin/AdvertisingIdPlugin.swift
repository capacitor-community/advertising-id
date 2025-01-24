import Foundation
import Capacitor

@objc(AdvertisingIdPlugin)
public class AdvertisingIdPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "AdvertisingIdPlugin"
    public let jsName = "AdvertisingId"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "requestTracking", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "getAdvertisingId", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "getAdvertisingStatus", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = AdvertisingId()

    @objc func requestTracking(_ call: CAPPluginCall) {
        implementation.requestTracking { status in
            call.resolve([ "value": status.name() ])
        }
    }

    @objc func getAdvertisingId(_ call: CAPPluginCall) {
        let id = implementation.getAdvertisingId()
        let status = implementation.getAdvertisingStatus()
        call.resolve([
            "id": id,
            "status": status.name()
        ])
    }

    @objc func getAdvertisingStatus(_ call: CAPPluginCall) {
        let status = implementation.getAdvertisingStatus()
        call.resolve([
            "status": status.name()
        ])
    }
}
