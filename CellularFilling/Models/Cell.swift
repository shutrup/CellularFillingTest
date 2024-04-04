import Foundation

enum Cell {
    case dead, alive, life
    
    var icon: String {
        switch self {
        case .dead: return AppStrings.deathIconName
        case .alive: return AppStrings.liveIconName
        case .life: return AppStrings.lifeIconName
        }
    }
    
    var title: String {
        switch self {
        case .dead: return AppStrings.cellTitleDead
        case .alive: return AppStrings.cellTitleAlive
        case .life: return AppStrings.cellTitleLife
        }
    }
    
    var subtitle: String {
        switch self {
        case .dead: return AppStrings.cellSubtitleDead
        case .alive: return AppStrings.cellSubtitleAlive
        case .life: return AppStrings.cellSubtitleLife
        }
    }
}
