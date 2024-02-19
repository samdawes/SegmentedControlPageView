import SwiftUI

@available(iOS 13.0, visionOS 1.0, *)
public struct PageView<Page: View>: View {
    private var pages: [Page]
    @Binding private var selection: Int
    
    public init(
        _ pages: [Page],
        selection: Binding<Int>
    ) {
        self.pages = pages
        self._selection = selection
    }
    
    public var body: some View {
        if #available(iOS 14, visionOS 1.0, *) {
            TabView(selection: $selection) {
                ForEach(0..<pages.count, id:\.self) { index in
                    pages[index]
                        .tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .indexViewStyle(.page(backgroundDisplayMode: .never))
        } else {
            UIPageView(pages, selection: $selection)
        }
    }
}

