import SwiftUI

struct LandingPageOneView: View {
    @StateObject var landingPageOneViewModel = LandingPageOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("img_whitebackgroun")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(811.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: LandingPageTwoView(),
                                   tag: "LandingPageTwoView",
                                   selection: $landingPageOneViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            landingPageOneViewModel.nextScreen = "LandingPageTwoView"
        }
    }
}

struct LandingPageOneView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPageOneView()
    }
}
