import SwiftUI

struct NewWorldView: View {
    @StateObject private var viewModel = NewWorldViewModel()
    
    var body: some View {
        ZStack {
            backgroundColor
            
            VStack {
                title
                
                newCellList
                
                createButton
            }
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    NewWorldView()
}

private extension NewWorldView {
    var backgroundColor: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color(.violet), Color(.black)]),
            startPoint: .top,
            endPoint: .bottom
        )
        .edgesIgnoringSafeArea(.all)
    }
    
    var title: some View {
        Text("Клеточное наполнение")
            .font(.title2)
            .bold()
            .foregroundStyle(.white)
    }
    
    var newCellList: some View {
        ScrollView(showsIndicators: false) {
            ScrollViewReader { scrollView in
                LazyVStack(spacing: 4) {
                    ForEach(Array(viewModel.cells.enumerated()), id: \.offset) { index, cell in
                        NewWorldCell(cellType: cell)
                            .transition(.scale)
                            .id(index)
                    }
                }
                .padding(.vertical, 10)
                .onChange(of: viewModel.cells) { _ in
                    withAnimation {
                        scrollView.scrollTo(viewModel.cells.count - 1, anchor: .bottom)
                    }
                }
            }
        }
    }
    
    var createButton: some View {
        Button {
            withAnimation {
                viewModel.addCell()
            }
        } label: {
            RoundedRectangle(cornerRadius: 14)
                .foregroundStyle(.violet)
                .frame(maxWidth: .infinity, maxHeight: 46)
                .overlay {
                    Text("СОТВОРИТЬ")
                        .font(.callout)
                        .bold()
                        .foregroundStyle(.white)
                }
        }
    }
}
