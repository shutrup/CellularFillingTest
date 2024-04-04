import SwiftUI

struct NewWorldCell: View {
    let cellType: Cell

    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .frame(height: 72)
            .foregroundStyle(.white)
            .overlay {
                HStack(spacing: 16) {
                    Image(cellType.icon)
                    
                    VStack(alignment: .leading) {
                        Text(cellType.title)
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text(cellType.subtitle)
                            .font(.callout)
                    }
                    .foregroundStyle(.black)
                }
                .padding(16)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
    }
}

#Preview {
    ZStack {
        Color(.violet).ignoresSafeArea()
        
        VStack(spacing: 4) {
            NewWorldCell(cellType: .alive)
            
            NewWorldCell(cellType: .life)
            
            NewWorldCell(cellType: .dead)
        }
        .padding(.horizontal, 16)
    }
}
