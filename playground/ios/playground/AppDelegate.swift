import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, RCTBridgeDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        ReactNativeNavigation.bootstrap(with: self, launchOptions: launchOptions)

        return true
    }
	
	func sourceURL(for bridge: RCTBridge?) -> URL? {
		return RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index", fallbackResource: nil)
	}

	private func extraModules(for bridge: RCTBridge?) -> [RCTBridgeModule?]? {
		return ReactNativeNavigation.extraModules(for: bridge)
	}
}
