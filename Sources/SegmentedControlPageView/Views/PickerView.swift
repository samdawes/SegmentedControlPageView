import SwiftUI

@available(iOS 13.0, visionOS 1.0, *)
struct PickerView: View {
    private var titleKey: LocalizedStringKey
    @Binding private var selection: Int
    private var labels: [String]
    
    init(
        _ titleKey: LocalizedStringKey,
        selection: Binding<Int>,
        labels: [String]
    ) {
        self.titleKey = titleKey
        self._selection = selection
        self.labels = labels
    }
    
    var body: some View {
        Picker(titleKey, selection: $selection.animation()) {
            ForEach(0..<labels.count, id:\.self) { index in
                Text(labels[index])
                    .tag(index)
            }
        }
        .pickerStyle(.segmented)
    }
}
