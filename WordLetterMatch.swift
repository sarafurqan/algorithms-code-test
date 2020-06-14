import Foundation

/*
 * Find the number of similar words in a string
 * Two words are same if one contains all the letters in the other word and vice versa
 ** Example: 
 * word: love
 * string: love dog good doggie god gooddog lovel lov looeelv cat
 * number of matches: 3
 */

func findSimilarWord(wordToTest: String, stringOfWords: String) {
    var count: Int = 0
    for wordInString in stringOfWords.split(separator: " ") {
        var lettersContainedInWordInString: Int = 0
        var lettersContainedInWordToTest: Int = 0
        for char in wordToTest {
            if wordInString.contains(char) {
                lettersContainedInWordInString = lettersContainedInWordInString + 1
            }
        }
        for char in wordInString {
            if wordToTest.contains(char) {
                lettersContainedInWordToTest = lettersContainedInWordToTest + 1
            }
        }
        if lettersContainedInWordInString == wordToTest.count && wordInString.count == lettersContainedInWordToTest {
            count = count + 1
        }
    }
    print(count)
}

findSimilarWord(wordToTest: "love", l: "love dog good doggie god gooddog  lovel lov looeelv cat")
