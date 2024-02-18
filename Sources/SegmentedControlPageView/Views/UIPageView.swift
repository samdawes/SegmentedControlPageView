import SwiftUI

@available(iOS 13.0, *)
struct UIPageView<Page: View>: View {
    private var viewControllers: [UIHostingController<Page>]
    @Binding private var selection: Int
    
    init(
        _ pages: [Page],
        selection: Binding<Int>
    ) {
        self.viewControllers = pages.map { UIHostingController(rootView: $0) }
        self._selection = selection
    }
    
    var body: some View {
        PageViewController(controllers: viewControllers, currentPage: $selection)
            .id(UUID())
    }
}
