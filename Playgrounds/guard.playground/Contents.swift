import UIKit
for i in 1...10
{
    guard i.isMultiple(of: 2) else {
        continue
    }
    print(i)
}

func processBook(title: String?, price: Double?, pages: Int?) {
  guard let theTitle = title, let thePrice = price, let
  thePages = pages else { return }
  print("\(theTitle) costs $\(thePrice) and has \(thePages) pages.")
}
processBook(title: "Container", price: 29.9, pages: 12)
