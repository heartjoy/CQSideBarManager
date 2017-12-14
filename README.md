
## CQSideBarManager
* a useful sideBar Manager for iOS.

## ScreenShot
![](https://github.com/heartjoy/CQSideBarManager/blob/master/%E6%BC%94%E7%A4%BA%E9%A1%B9%E7%9B%AE.gif)

## Requirements

* iOS 7.0 or higher
* ARC

## Features

* can open the sideBar
* can close the sideBar
* support customize the sideBar
* support device rotation
* support to click mask to close the sideBar 
* support CocoaPods

## Delegate
```
@required
- (UIView *)viewForSideBar;

@optional
/**
 * 点击遮罩层关闭侧边栏,默认为YES
 */
- (BOOL)canCloseSideBar;

```
## CocoaPods
* pod "CQSideBarManager"

## Examples

```
//打开侧边栏
[[CQSideBarManager sharedInstance] openSideBar:self];

//关闭侧边栏
[[CQSideBarManager sharedInstance] closeSideBar];
```
## Hope

* If you have any questions during the process or want more interfaces to customize，you can ![issues me](https://github.com/heartjoy/CQSideBarManager/issues/new)!
* If you find the function is not enough when used，Hope you can ![issues me](https://github.com/heartjoy/CQSideBarManager/issues/new)!，I very much to add more useful function to this framework ，Thank you !

## Licenses
All source code is licensed under the MIT License.
