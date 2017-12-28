import Foundation

class WhileBlock: Executable {
    var condition: Decidable?
    var then: Executable?
    var next: Executable?
    
    func execute() -> Void {
        guard let condition = self.condition, let then = self.then, let next = self.next else {
            //TODO
            //  - decide what has gone wrong
            //  - tell user how to fix the issue
            return
        }
        
        while condition.decide() {
            then.execute()
        }
        next.execute()
    }
}
