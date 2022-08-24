import SwiftUI

struct EditableTextFieldViewRepresentableView: View {
    @StateObject var viewModel = RandomTextGeneratorService()
    
    var body: some View {
        VStack {
            EditableTextFieldViewRepresentable(text: $viewModel.randomText)
                .frame(maxHeight: .infinity, alignment: .topLeading)
                .border(.gray, width: 2)
            
            Text("\(Constants.wordCountLabelText) \(viewModel.getWordCount(sourceString: viewModel.randomText))")
                .frame(maxWidth: .infinity, alignment: .leading)

            Button(Constants.buttonTitleText) {
                viewModel.generateRandomText()
            }
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(colors: [.purple], startPoint: .leading, endPoint: .trailing))
            .contentShape(Rectangle())
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EditableTextFieldViewRepresentableView()
    }
}
