import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    window = UIWindow()
    let layout = PinterestLayout()
    window?.rootViewController = PhotoStreamViewController(collectionViewLayout: layout)
    window?.makeKeyAndVisible()
    return true
  }
}
