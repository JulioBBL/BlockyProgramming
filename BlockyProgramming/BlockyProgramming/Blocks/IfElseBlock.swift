import Foundation

class IfElseBlock: Executable {
    var condition: Decidable?
    var then: Executable?
    var otherwise: Executable?
    
    var next: Executable?
    
    func execute() -> Void {
        guard let condition = self.condition, let then = self.then, let otherwise = self.otherwise, let next = self.next else {
            //TODO
            //  - decide what has gone wrong
            //  - tell user how to fix the issue
            return
        }
        
        if condition.decide() {
            then.execute()
        } else {
            otherwise.execute()
        }
        next.execute()
    }
}
