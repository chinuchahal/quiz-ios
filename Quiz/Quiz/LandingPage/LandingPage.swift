import SwiftUI

struct LandingPage: ManagedView {
    @ObservedObject private(set) var viewModel: LandingPageViewModel

    var body: some View {
        InfiniteVerticalScroll()
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
