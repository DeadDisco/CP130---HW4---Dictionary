import Foundation

public struct Definition {
    public let partOfSpeech: String
    public let explanation: String
    public let example: String?
}

public struct Pronunciation {
    public let ipa: String
    public let notes: String?
}

public struct DictionaryEntry {
    public let word: String
    public let pronunciations: [Pronunciation]
    public let definitions: [Definition]
}
