import SwiftUI

/// A view that can switch between multiple child views using a
/// combination of swipe gestures and a segmented control.
/// The user can either tap on the segments or swipe on the pages to navigate.
///
/// To create a user interface with paging views and a segmented control,
/// create the labels for the tabs as a `String` array, and create the views as a `View` array.
/// The size of `labels` and `pages` must be the same to prevent unexpected behavior.
///
/// The following example creates a segmented control page
/// view with three segments, each presenting a custom child view.
///
///     SegmentedControlPageView(
///         "Onboarding Process"
///         labels: [
///             "Welcome"
///             "Features"
///             "Next Steps"
///         ],
///         pages: [
///             WelcomeView(),
///             FeaturesView(),
///             NextStepsView()
///         ]
///     )
@available(iOS 13.0, visionOS 1.0, *)
public struct SegmentedControlPageView<Page: View>: View {
    private let titleKey: LocalizedStringKey
    @Binding private var selection: Int
    private let labels: [String]
    private let pages: [Page]
    
    /// Creates a segmented control page view
    ///
    /// The labels and pages array must contain the same number of elements;
    /// unexpected behavior or crashes could occur.
    ///
    /// - Parameters:
    ///   - titleKey: A localized string key that describes the purpose of selecting a page.
    ///   - selection: A binding to an `Int` that determines the currently-selected page.
    ///   - labels: An array of strings that represents the title for each segment and page
    ///   - pages: An array of `View` that represents each page
    public init(
        _ titleKey: LocalizedStringKey,
        selection: Binding<Int>,
        labels: [String],
        pages: [Page]
    ) {
        self.titleKey = titleKey
        self._selection = selection
        self.labels = labels
        self.pages = pages
    }

    public var body: some View {
        VStack {
            PickerView(titleKey, selection: $selection, labels: labels)
            PageView(pages, selection: $selection)
        }
    }
}
