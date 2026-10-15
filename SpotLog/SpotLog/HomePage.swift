import SwiftUI

struct HomePage: View {
    @State private var searchText: String = ""

    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("cerca nei tuoi posti", text: $searchText)
                Button(action: {
                    print("Hamburger")
                }) {
                    Image(systemName: "line.3.horizontal")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
                
            }
            .padding(5)
            .background(.white)
            .cornerRadius(10)
            .padding(5)
            
            HStack{
                Button("Explore"){
                    
                }
            }
        }.background(Color.gray)
        
    }
}

#Preview {
    HomePage()
}
