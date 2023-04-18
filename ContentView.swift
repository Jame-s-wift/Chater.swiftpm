import SwiftUI


class AppState: ObservableObject {
    @Published var userName: String = "User"
}


struct ContentView: View {
    @StateObject var appState = AppState()
    @State var selectedTab = 1
    var body: some View {
        TabView(selection: $selectedTab){
            
            ChatBotView()
                .tabItem{
                    Image(systemName: "person.wave.2.fill")
                        .foregroundColor(.gray)
                    Text("Chat Bot")
                }
                .tag(2)
            
            HomeView()
                .tabItem{
                    Image(systemName: "house.fill")
                        .foregroundColor(.gray)
                    Text("Home")
                }
                .tag(1)
            
            SettingsView()
                .tabItem{
                    Image(systemName: "gearshape.fill")
                        .foregroundColor(.gray)
                    Text("Settings")
                }
                .tag(2)
        }
        .onAppear{
            selectedTab = 1
        }
        .environmentObject(appState)
        .tabViewStyle(.automatic)
    }
}
