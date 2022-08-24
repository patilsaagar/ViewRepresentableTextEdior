import SwiftUI

struct EditableTextFieldViewRepresentable: UIViewRepresentable {
    typealias UIViewType = UITextView
    @Binding var text: String

    func makeUIView(context: Context) -> UITextView {
        return getTextView(context: context)
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
        uiView.font = UIFont.init(name: "Arial", size: 20)
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }
    
    private func getTextView(context: Context) -> UITextView {
        let textView = UITextView(frame: .zero)
        textView.delegate = context.coordinator
        
        return textView
    }
    
    class Coordinator: NSObject, UITextViewDelegate {
        @Binding var text: String
        
        init(text: Binding<String>) {
            self._text = text
        }
        
        func textViewDidChangeSelection(_ textView: UITextView) {
            text = textView.text
        }

    }
}
