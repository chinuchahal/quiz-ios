import Foundation

// MARK: - Strings extension for localisation
extension String {
    func localised(tableName: String) -> String {
        NSLocalizedString(self, tableName: tableName, bundle: .main, value: "**\(self)**", comment: "")
    }
}
