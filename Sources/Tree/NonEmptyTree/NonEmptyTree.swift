import Foundation
import List

public enum NonEmptyTree<Element> {
    case leaf(Element)
    indirect case node(Element, NonEmptyList<NonEmptyTree<Element>>)
}

public extension NonEmptyTree {
    var element: Element {
        switch self {
        case .leaf(let element):
            return element
        case .node(let element, _):
            return element
        }
    }
}

extension NonEmptyTree: Equatable where Element: Equatable {}
extension NonEmptyTree: Hashable where Element: Hashable {}
