# SegmentedControlPageView
**Offers a seamless integration of a segmented control and a page view in native SwiftUI applications**. Users can navigate between pages by swiping or tapping on segments in the control. Compatible with iOS 13+ and visionOS 1+. 

## Usage
The following example shows a possible onboarding process. The segmented control has three segments with the labels `Welcome`, `Features`, and `Next Steps` that correspond to three custom SwiftUI views: `WelcomeView()`, `FeaturesView()`, and `NextStepsView()`.
```swift
import SegmentedControlPageView

SegmentedControlPageView(
  "Onboarding Process"
  labels: [
    "Welcome",
    "Features",
    "Next Steps"
  ],
  pages: [
    WelcomeView(),
    FeaturesView(),
    NextStepsView()
  ]
)
```

## Requirements
- iOS 13.0 or later
- visionOS 1.0 or later

## Installation
### Swift Package Manager
In Xcode go to Project -> Your Project Name -> `Package Dependencies` -> Tap _Plus_. Insert url:
```
https://github.com/samdawes/SegmentedControlPageView
```
or adding it to the `dependencies` of your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/samdawes/SegmentedControlPageView", .upToNextMajor(from: "1.0.0"))
]
```
### Manually

If you prefer not to use Swift Package Manager, you can integrate manually. Put the `Sources/SegmentedControlPageView` folder in your Xcode project. Make sure to enable `Copy items if needed` and `Create groups`.
