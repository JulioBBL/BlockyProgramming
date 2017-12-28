import Foundation

protocol Executable {
    var next: Executable? {get set}
    
    func execute() -> Void
}
