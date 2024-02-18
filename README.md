# SegmentedControlPageView
**Offers a seamless integration of a segmented control and a page view in native SwiftUI applications**. Users can navigate between pages by swiping or tapping on segments in the control. Compatible with iOS/iPadOS 13+ and visionOS 1+. 

##Usage
The following example shows an app onboarding process. The segmented control has three segments with the labels `Welcome`, `Features`, and `Next Steps` that correspond to three custom SwiftUI views: `WelcomeView()`, `FeaturesView()`, and `NextStepsView()`.
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
