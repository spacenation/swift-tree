import Foundation
@_exported import List

public enum Tree<Element> {
    case empty
    indirect case nonEmpty(NonEmptyTree<Element>)
}

extension Tree: Equatable where Element: Equatable {}
extension Tree: Hashable where Element: Hashable {}
