import SwiftUI

@available(iOS 14.0, *)
@main
struct ViewRepresentableTextEdiorApp: App {
    var body: some Scene {
        WindowGroup {
            EditableTextFieldViewRepresentableView()
        }
    }
}
