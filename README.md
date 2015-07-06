# MakeItHybrid

[![CI Status](http://img.shields.io/travis/yusufm/MakeItHybrid.svg?style=flat)](https://travis-ci.org/yusufm/MakeItHybrid)
[![Version](https://img.shields.io/cocoapods/v/MakeItHybrid.svg?style=flat)](http://cocoapods.org/pods/MakeItHybrid)
[![License](https://img.shields.io/cocoapods/l/MakeItHybrid.svg?style=flat)](http://cocoapods.org/pods/MakeItHybrid)
[![Platform](https://img.shields.io/cocoapods/p/MakeItHybrid.svg?style=flat)](http://cocoapods.org/pods/MakeItHybrid)


MakeItHybrid let you create your hybrid application very easily for iOS in Swift language.

# How To Get Start

 If you finished installation of pod file(see at below how to do), you should import the framework in the begining of your controller class like:

```swift
	import MakeItHybrid
```
Then, define the framework as your class variable
```swift
	var openUrl = MakeItHybrid()
```
and in your viewDidLoad() method you should tell the framework which view will show your web page as it is below
```swift
	openUrl.superView = self.view
```
finally add your url:
```swift
	openUrl.makeHybridWithUrlString("http://miletli.com")
```
In any kind of question or advices, please do not hesitate to ask or advice!

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

MakeItHybrid is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MakeItHybrid"
```

## Author

Yusuf Miletli, miletliyusuf@gmail.com

## License

MakeItHybrid is available under the MIT license. See the LICENSE file for more info.
