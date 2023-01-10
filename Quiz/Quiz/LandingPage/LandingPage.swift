import SwiftUI

struct LandingPage: ManagedView {
    @ObservedObject private(set) var viewModel: LandingPageViewModel

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accessory)
            Text("Hello, world!")
                .foregroundColor(.accessory)
        }
        .padding()
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
