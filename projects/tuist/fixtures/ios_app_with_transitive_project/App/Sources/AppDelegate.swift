import Framework1
import FrameworkA
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func applicationDidFinishLaunching(_: UIApplication) {
        let framework1 = Framework1File()
        let frameworkA = FrameworkAFile()

        print(hello())
        print("AppDelegate -> \(framework1.hello())")
        print("AppDelegate -> \(framework1.helloFromFramework2())")
        print("AppDelegate -> \(framework1.helloFromFramework3())")
        print("AppDelegate -> \(frameworkA.hello())")
        print("AppDelegate -> \(frameworkA.helloFromFrameworkB())")
    }

    func hello() -> String {
        "AppDelegate.hello()"
    }
}
