# ZKNavigationController


[![Version](https://img.shields.io/cocoapods/v/ZKNavigationController.svg?style=flat)](http://cocoapods.org/pods/ZKNavigationController)
[![License](https://img.shields.io/cocoapods/l/ZKNavigationController.svg?style=flat)](http://cocoapods.org/pods/ZKNavigationController)
[![Platform](https://img.shields.io/cocoapods/p/ZKNavigationController.svg?style=flat)](http://cocoapods.org/pods/ZKNavigationController)

## Demo

<img src="https://raw.githubusercontent.com/ZacharyKhan/ZKNavigationController/986333ba9191efd29367ca069a184daa89bc45dc/Example/ZKNavigationControllerDemo.gif" height="600"/>

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Set your Navigation Controller AND module to `ZKNavigationController` via storyboard or in viewDidLoad().

then `import ZKNavigationController` in your viewController.

## Installation

ZKNavigationController is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ZKNavigationController"
```

## Usage

```ruby
import UIKit
import Foundation
import ZKNavigationController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showAlertButtonHandler(sender: AnyObject) {
        self.show(withIcon: true)
    }
    
    @IBAction func showWithoutIconHandler(sender: AnyObject) {
        self.show(withIcon: false)
    }

    func show(withIcon withIcon:Bool!) {
        if let navController : ZKNavigationController = self.navigationController as? ZKNavigationController {
            if !withIcon {
                let popupView = ZKNavigationPopupView(navigationController: navController, Icon: nil, Message: "Showing a ZKAlert")
                navController.showAlert(popupView)
            } else {
                let icon = ZKIcon(image: UIImage(named: "image"))
                let popupView = ZKNavigationPopupView(navigationController: navController, Icon: icon, Message: "Showing a ZKAlert")
                navController.showAlert(popupView)
            }
        } else {
            print("COULD NOT DO ZKNAVCONTROLLER")
        }
    }
}
```

## Contribution

If you would like to contribute to ZKNagivationController, please fork the repo. 

For ALL feature requests and bugs, please submit an issue. 

## Author

You can reach me on Twitter -> @ZacharyKhan3

## License

ZKNavigationController is available under the MIT license. See the LICENSE file for more info.
