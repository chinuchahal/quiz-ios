import SwiftUI

// MARK: - Image extension
extension Image {
    init(_ imageResource: ImageAssets, bundle: Bundle? = nil) {
        self.init(imageResource.rawValue, bundle: bundle)
    }
}

// MARK: - Label extension
extension Label where Title == Text, Icon == Image {
    init<S: StringProtocol>(_ title: S, imageResource: ImageAssets) {
        self.init(title, image: imageResource.rawValue)
    }

    init(_ titleKey: LocalizedStringKey, imageResource: ImageAssets) {
        self.init(titleKey, image: imageResource.rawValue)
    }
}
