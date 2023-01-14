import Foundation

struct Profile: Identifiable {
    var id: Int
    var name: String
    var image: String
}

var index = 5
var randomWord: String {
    var newWord = ""
    for _ in 0..<5 {
        let string = String(format: "%c", Int.random(in: 97..<123)) as String
        newWord+=string
    }
    return newWord
}
