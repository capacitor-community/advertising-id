import Foundation
import AdSupport
import AppTrackingTransparency

@objc public class AdvertisingId: NSObject {
    // Make own tracking enum to account for iOS 12-13
    @objc public enum TrackingStatus: Int {
        case Authorized
        case Denied
        case NotDetermined
        case Restricted

        func name() -> String {
            switch self {
            case .Authorized: return "Authorized"
            case .Denied: return "Denied"
            case .NotDetermined: return "Not Determined"
            case .Restricted: return "Restricted"
            }
        }
    }

    @objc public func requestTracking(completion: (@escaping (TrackingStatus) -> Void)) {
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                switch status {
                case .authorized: completion(.Authorized)
                case .denied: completion(.Denied)
                case .notDetermined: completion(.NotDetermined)
                case .restricted: completion(.Restricted)
                @unknown default: completion(.NotDetermined)
                }
            }
        } else {
            completion(.Authorized)
        }
    }

    @objc public func getAdvertisingId() -> String {
        return ASIdentifierManager.shared().advertisingIdentifier.uuidString
    }

    @objc public func getAdvertisingStatus() -> TrackingStatus {
        if #available(iOS 14, *) {
            switch ATTrackingManager.trackingAuthorizationStatus {
            case .authorized: return .Authorized
            case .denied: return .Denied
            case .notDetermined: return .NotDetermined
            case .restricted: return .Restricted
            @unknown default: return .NotDetermined
            }
        } else {
            return .Authorized
        }
    }
}
