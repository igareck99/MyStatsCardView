import SwiftUI

// MARK: - MainPage

struct MainPage: View {
    
    // MARK: - Internal Properties

    @State var currentTab: Tab = .Home
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    // MARK: - Body

    var body: some View {
        VStack(spacing: 0){
            TabView(selection: $currentTab) {
                Home()
                    .tag(Tab.Home)
                Text("Liked")
                    .tag(Tab.Liked)
                Text("Profile")
                    .tag(Tab.Profile)
                Text("Cart")
                    .tag(Tab.Cart)
            }
            HStack(spacing: 0){
                ForEach(Tab.allCases,id: \.self){tab in
                    Button {
                        currentTab = tab
                    } label: {
                        Image(tab.rawValue)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 22, height: 22)
                            .background(
                                Color("Purple")
                                    .opacity(0.1)
                                    .cornerRadius(5)
                                    .blur(radius: 5)
                                    .padding(-7)
                                    .opacity(currentTab == tab ? 1 : 0)
                            )
                            .frame(maxWidth: .infinity)
                            .foregroundColor(currentTab == tab ? Color("Purple") : Color.black.opacity(0.3))
                    }
                }
            }
            .padding([.horizontal,.top])
            .padding(.bottom,10)
        }
        .background(Color("HomeBG").ignoresSafeArea())
    }
}

// MARK: - MainPage_Previews

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

// MARK: - Tab

enum Tab: String,CaseIterable{
    
    // Raw Value must be image Name in asset..
    case Home = "Home"
    case Liked = "Liked"
    case Profile = "Profile"
    case Cart = "Cart"
}
