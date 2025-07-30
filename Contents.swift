import UIKit
import Foundation
//Array Operation
print("<||  Array Operation  ||>")
var shoppingList : [String] = ["iPhone", "MacBook", "iPod", "Apple Watch"]
shoppingList.append(contentsOf: ["Sumsung Galaxy S20", "Nokia", "Headphone"])
let countItem = shoppingList.count
print("Total of item in shopping list before remove is \(countItem)")
shoppingList.removeFirst()
shoppingList[1] = "Milk"
let newCountItem : Int = shoppingList.count
for i in 0..<newCountItem {
    print("Item \(i+1) is \(shoppingList[i])")
}
print()

//Dictionary Operation
print("<||  Dictionary Operation  ||>")
var movieRating : [String : Double] = ["Avenger Infinity War" : 9.3, "Avenger Endgame" : 9.2, "One Piece" : 9.0, "Naruto Shippuden" : 9.0, "Fairy Tail" : 8.9]
movieRating["Boruto"] = 9.5;movieRating["Marry to the enemy of my enemy"] = 9.6
print("Rating of One Piece is \(movieRating["One Piece"]!)")
movieRating.removeValue(forKey: "Fairy Tail")
let result : [String : Double] = movieRating.filter({$0.key == "Avenger Endgame"})
print("Chosen Movie is \(result.keys.joined()) : Rating is \(result.values.reduce(0 , (+)))")
var movieTitle : String = "Avenger Endgame"
let checkMovie = movieRating.contains(where: {$0.key == movieTitle})
(checkMovie ? print("\(movieTitle) is in the list") : print("\(movieTitle) is not in the list"))
print()

//Date Handling
print("<||  Date Handling  ||>")
var nsDate : NSDate = NSDate()
let formatter = DateFormatter()
formatter.dateFormat = "MMM d, yyyy"
print("Current Date is \(formatter.string(from: nsDate as Date))")
var swiftDate : Date = nsDate as Date
swiftDate = Calendar.current.date(byAdding: .month, value: 1, to: swiftDate)!
print("Date after 1 month is \(formatter.string(from: swiftDate as Date))")
print()

//URL Handling
print("<||  URL Handing  ||>")
var url : URL = URL(string: "https://www.example.com")!
print("URL is \(url)")
let newURL = url.appendingPathComponent("/about")
print("New URL is \(newURL)")
print()

//Set and Cocao
print("<||  Set and Cocoa  ||>")
var favoriteGenre : Set<String> = ["FunK", "Soul Music", "Rock", "Hip hop"]
favoriteGenre.insert("Pop")
var genreName : String = "Pop"
let chekGenre : Bool = favoriteGenre.contains(genreName.capitalized)
(chekGenre ? print("\(genreName.capitalized) is in the list") : print("\(genreName.capitalized) is not in the list"))
var favoriteGenreArray : [String] = Array(favoriteGenre)
print("Favorite Genre convert to Array is \(favoriteGenreArray)")
print()

//Date Manipulation
print("<||  Date Manipulation  ||>")
var todayDate : Date = Date()
var dataFormatter = DateFormatter()
dataFormatter.dateFormat = "MM/dd/yyyy"
print("Formatted from today date  \(dataFormatter.string(from: todayDate as Date))")
let dateString : String = "08/24/2024"
print("Formatted from string : \(dateString) to date \(dataFormatter.date(from: dateString)!)")







      
