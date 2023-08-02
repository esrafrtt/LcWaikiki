import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var storeModel: StoreModel
    @State private var errorMessage = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 155, height: 23)
                    .padding(.top, 10)
                
                Text("Hoşgeldin, yeni fırsatları keşfetmeye hazır mısın?")
                    .font(.system(size: 13))
                    .foregroundColor(.blue).foregroundColor(.black)           .padding()
                    .background(Color(red: 0.95, green: 0.95, blue: 0.97))
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                
                List(storeModel.categories, id: \.id){ category in
                           
                    NavigationLink(value: category){
                        HStack {
             AsyncImage(url: category.image) { image in
                 image
                     .resizable()
                     .frame(width: 100, height: 100)
                     .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
             } placeholder: {
                 ProgressView()
             }
             
             Text(category.name)
                 .lineLimit(1) // Limit the text to one line
         }
                        
     }                                   
                }.navigationDestination(for: Category.self, destination: { category in
                    ProductListScreen(category: category)
                })
                .task {
                    do {
                        try await storeModel.fetchCategories()
                    } catch {
                        errorMessage = error.localizedDescription
                    }
                }
                .padding(.horizontal, 20)
                
                Spacer()
                
                Text(errorMessage)
                
                    .foregroundColor(.red) // Show the error message in red
                
                    .padding(.bottom, 20) // Add some space at the bottom for better readability
            }
      
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(StoreModel())
    }
}
