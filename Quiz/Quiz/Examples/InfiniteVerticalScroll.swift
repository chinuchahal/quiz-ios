import SwiftUI

struct InfiniteVerticalScroll: View {
    @State private var data = [
        Profile(id: 0, name: "Photo1", image: "photo1"),
        Profile(id: 1, name: "Photo2", image: "photo2"),
        Profile(id: 2, name: "Photo3", image: "photo3"),
        Profile(id: 3, name: "Photo4", image: "photo4"),
        Profile(id: 4, name: "Photo5", image: "photo5")
    ]

    @State var index: Int = 0
    @State var count: Int = 5

    var body: some View {
        GeometryReader { proxy in
            TabView(selection: $index) {
                ForEach(data) { profilepic in
                    HStack {
                        Spacer()
                        VStack {
                            Spacer()
                            Text("\(profilepic.name)-\(profilepic.id)")
                            Spacer()
                        }
                        Spacer()
                    }
                    .tag(profilepic.id)
                }
                .rotationEffect(.degrees(-90)) // Rotate content
                .frame(
                    width: proxy.size.width,
                    height: proxy.size.height
                )
                HStack {
                    Spacer()
                    VStack {
                        Spacer()
                        Text("Loading")
                        Spacer()
                    }
                    Spacer()
                }
                .tag(-100)
                .rotationEffect(.degrees(-90)) // Rotate content
                .frame(
                    width: proxy.size.width,
                    height: proxy.size.height
                )
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        addNewCard()
                    }
                }
            }
            .frame(
                width: proxy.size.height, // Height & width swap
                height: proxy.size.width
            )
            .rotationEffect(.degrees(90), anchor: .topLeading) // Rotate TabView
            .offset(x: proxy.size.width) // Offset back into screens bounds
            .tabViewStyle( PageTabViewStyle(indexDisplayMode: .always) )
        }
    }

    func addNewCard() {
        if index == -100 {
            index = count
        }
        for _ in 0...4 {
            let newCard = Profile(id: count, name: randomWord, image: randomWord)
            count += 1
            data.append(newCard)
        }
    }
}

struct InfiniteVerticalScroll_Previews: PreviewProvider {
    static var previews: some View {
        InfiniteVerticalScroll()
    }
}
