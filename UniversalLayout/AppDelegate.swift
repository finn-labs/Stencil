import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)

        let isPhone = UIDevice.current.userInterfaceIdiom == .phone
        if isPhone {
            window?.rootViewController = PhoneRootViewController()
        } else {
            window?.rootViewController = TabletRootViewController()
        }
        window?.makeKeyAndVisible()

        return true
    }
}

