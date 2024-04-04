import Foundation

enum Cell {
    case dead, alive, life
    
    var icon: String {
        switch self {
        case .dead: "deathIcon"
        case .alive: "liveIcon"
        case .life: "lifeIcon"
        }
    }
    
    var title: String {
        switch self {
        case .dead: "Мертвая"
        case .alive: "Живая"
        case .life: "Жизнь"
        }
    }
    
    var subtitle: String {
        switch self {
        case .dead: "или прикидывается"
        case .alive:"и шевелиться!"
        case .life: "Ку-Ку!"
        }
    }
}
