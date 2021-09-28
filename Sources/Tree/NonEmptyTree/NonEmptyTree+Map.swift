import Foundation

public extension NonEmptyTree {
    func map<NewElement>(_ fn: (Element) -> NewElement) -> NonEmptyTree<NewElement> {
        switch self {
        case .leaf(let element):
            return .leaf(fn(element))
        case .node(let element, let nonEmptyList):
            return .node(fn(element), nonEmptyList.map { $0.map(fn) })
        }
    }
}
