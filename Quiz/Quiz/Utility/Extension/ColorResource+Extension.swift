import SwiftUI

// MARK: - ColorAssets extension
private extension ColorAssets {
    var color: Color {
        Color(rawValue)
    }
}

// MARK: - Color extension
extension Color {
    init(_ colorResource: ColorAssets) {
        self.init(colorResource.rawValue)
    }
}

// MARK: - View extension
extension View {
    func foregroundColor(_ colorResource: ColorAssets?) -> some View {
        self.foregroundColor(colorResource?.color)
    }

    func background(_ colorResource: ColorAssets) -> some View {
        self.background(colorResource.color)
    }

    func accentColor(_ colorResource: ColorAssets?) -> some View {
        self.accentColor(colorResource?.color)
    }

    func tint(_ colorResource: ColorAssets) -> some View {
        self.tint(colorResource.color)
    }
}

// MARK: - Text
extension Text {
    func foregroundColor(_ colorResource: ColorAssets) -> Self {
        self.foregroundColor(colorResource.color)
    }
}

// MARK: - Shape
extension Shape {
    func stroke(_ colorResource: ColorAssets, lineWidth: CGFloat = 1) -> some View {
        self.stroke(colorResource.color, lineWidth: lineWidth)
    }
}

// MARK: - UIColor
#if canImport(UIKit)
extension UIColor {
    convenience init(_ color: ColorAssets) {
        self.init(named: color.rawValue)!
    }
}
#endif
