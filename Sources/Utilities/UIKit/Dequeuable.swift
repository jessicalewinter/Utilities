import Foundation

protocol Dequeuable {
    associatedtype CellType
    
    func dequeueReusableCell(for indexPath: IndexPath) -> CellType
}
