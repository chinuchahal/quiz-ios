import SwiftUI

struct InfiniteVerticalScrollView: View {
    @State private var data = [
        Profile(id: 0, name: "Photo1", image: "photo1"),
        Profile(id: 1, name: "Photo2", image: "photo2"),
        Profile(id: 2, name: "Photo3", image: "photo3"),
        Profile(id: 3, name: "Photo4", image: "photo4"),
        Profile(id: 4, name: "Photo5", image: "photo5")
    ]

    var body: some View {
        GeometryReader { proxy in
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(data) { profilepic in
                    HStack {
                        Spacer()
                        Text(profilepic.name)
                        Spacer()
                    }
                    .frame(
                        width: proxy.size.width,
                        height: proxy.size.height
                    )
                }
            }
            .onAppear {
                UIScrollView.appearance().isPagingEnabled = true
            }
        }
    }
}
