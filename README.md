# SegmentedControlPageView
**Offers a seamless integration of a segmented control and a page view in native SwiftUI applications**. Users can navigate between pages by swiping or tapping on segments in the control. Compatible with iOS 13+ and visionOS 1+. 
![2024-02-18 18 34 46](https://github.com/samdawes/SegmentedControlPageView/assets/12502222/23e2b34f-e332-44e8-a47f-c463710e21db)
![2024-02-18 18 54 14](https://github.com/samdawes/SegmentedControlPageView/assets/12502222/bcf97d3e-2563-4bcc-906c-fa4a2f54e264)

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
or add it to the `dependencies` section in your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/samdawes/SegmentedControlPageView", .upToNextMajor(from: "1.0.0"))
]
```
### Manually

If you prefer not to use Swift Package Manager, you can integrate manually. Put the `Sources/SegmentedControlPageView` folder in your Xcode project. Make sure to enable `Copy items if needed` and `Create groups`.

## Apps Using
If your app uses `SegmentedControlPageView`, don't hesitate to add yours to the list!
- [LineTime for Disneyland](https://apps.apple.com/us/app/linetime-for-disneyland/id1462481042)
- [LineTime for Disney World](https://apps.apple.com/us/app/linetime-for-disney-world/id1530744555)
