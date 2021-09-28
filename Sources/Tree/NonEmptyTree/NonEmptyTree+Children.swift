import Foundation
import List

public extension NonEmptyTree {
    var maybeChildren: [NonEmptyTree<Element>]? {
        switch self {
        case .leaf:
            return nil
        case .node(_ , let list):
            return Array(list.head + list.tail)
        }
    }
}
