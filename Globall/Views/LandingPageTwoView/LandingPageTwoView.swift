import SwiftUI

struct LandingPageTwoView: View {
    @StateObject var landingPageTwoViewModel = LandingPageTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .center) {
                    Image("img_whitebackgroun_811X390")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(811.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    Image("img_logoapp1")
                        .resizable()
                        .frame(width: getRelativeWidth(206.0), height: getRelativeWidth(206.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(92.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ConnexionView(),
                                   tag: "ConnexionView",
                                   selection: $landingPageTwoViewModel.nextScreen,
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
    }
}

struct LandingPageTwoView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPageTwoView()
    }
}
