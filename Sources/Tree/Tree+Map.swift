import Foundation

public extension Tree {
    func map<NewElement>(_ fn: (Element) -> NewElement) -> Tree<NewElement> {
        switch self {
        case .empty:
            return .empty
        case .nonEmpty(let nonEmptyTree):
            return .nonEmpty(nonEmptyTree.map(fn))
        }
    }
}
