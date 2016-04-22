# DBAttachmentPickerController
[![Version](https://img.shields.io/cocoapods/v/DBAttachmentPickerController.svg?style=flat)](http://cocoadocs.org/docsets/DBAttachmentPickerController)
[![License](https://img.shields.io/cocoapods/l/DBMapSelectorViewController.svg?style=flat)](http://cocoadocs.org/docsets/DBMapSelectorViewController)
[![Platform](https://img.shields.io/cocoapods/p/DBMapSelectorViewController.svg?style=flat)](http://cocoadocs.org/docsets/DBMapSelectorViewController)
![Language](https://img.shields.io/badge/Language-%20Objective%20C%20-blue.svg)

This component allows to select different types of files from different sources on your device.

## Adding to your project

### Cocoapods

To add DBAttachmentPickerController via [CocoaPods](http://cocoapods.org/) into your project:

1. Add a pod entry for DBAttachmentPickerController to your Podfile `pod 'DBAttachmentPickerController', '~> 1.0.0'`
2. Install the pod by running `pod install`

### Source Files

To add DBAttachmentPickerController manually into your project: 

1. Download the latest code, using `git clone`
2. Open your project in Xcode, then drag and drop entire contents of the `Source` folder into your project (Make sure to select Copy items when asked if you extracted the code archive outside of your project)



### Property list selector

You can change additional MapSelector properties. Full properties list is shown below:

- `DBAttachmentMediaType mediaType` - It's determine the types of attachments that can be picked. This property has readonly attribute, 
 but you can specify it in appropriate initialization method. Default is DBAttachmentMediaTypeMaskAll;
- `BOOL allowsMultipleSelection` - Used to allow multiple selection where it possible. Default is NO.

## Contact

Denis Bogatyrev (maintainer)

- https://github.com/d0ping
- denis.bogatyrev@gmail.com

##License

DBMapSelectorViewController - Copyright (c) 2016 Denis Bogatyrev

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.