import Foundation

final class NewWorldViewModel: ObservableObject {
    @Published var cells: [Cell] = []
    
    func addCell() {
        let isAlive = Bool.random()
        let newCell = isAlive ? Cell.alive : Cell.dead
        cells.append(newCell)
        
        let sequence = cells.suffix(3)
        if sequence.count == 3 {
            if sequence.allSatisfy({ $0 == .alive }) {
                cells.append(.life)
            } else if sequence.allSatisfy({ $0 == .dead }) {
                if let lastAliveIndex = cells.lastIndex(where: { $0 == .alive || $0 == .life }) {
                    cells.remove(at: lastAliveIndex)
                }
            }
        }
    }
}

