import SwiftUI

struct AppnavigationView: View {
    @StateObject var appnavigationViewModel = AppnavigationViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Text(StringConstants.kLblAppNavigation)
                            .font(Font.system(size: getRelativeHeight(20.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(23.0),
                                   alignment: .leading)
                            .padding(.vertical, getRelativeHeight(10.0))
                            .padding(.horizontal, getRelativeWidth(20.0))
                        Text(StringConstants.kMsgCheckYourApp)
                            .font(Font.system(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(19.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(20.0))
                        Divider()
                            .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Black900)
                            .padding(.top, getRelativeHeight(5.0))
                    }
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(67.0))
                    .background(ColorConstants.WhiteA700)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            Group {
                                VStack {
                                    Text(StringConstants.kLblLandingpageone)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "LandingPageOneView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgManageYourEve)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "ManageyoureventView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblProfile)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "ProfileView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblEventcreated)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "EventCreatedView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblLandingpagetwo)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "LandingPageTwoView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblConnexion)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "ConnexionView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblHomepage)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "HomePageView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblEvents)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "EventsView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                            }
                            Group {
                                VStack {
                                    Text(StringConstants.kLblSignupone)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "SignUpOneView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblSignuptwo)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "SignUpTwoView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblMapsBasketball)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "MapsBasketballView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kLblMapsFootball)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "MapsFootballView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgMapsBasketball)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "MapsBasketballThreeView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgMapsBasketball2)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "MapsBasketballTwoView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgMapsBasketball3)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "MapsBasketballOneView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgMapsFootballO)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "MapsFootballOneView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                            }
                            Group {
                                VStack {
                                    Text(StringConstants.kMsgMapsFootballT)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "MapsFootballTwoView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgMapsFootballT2)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "MapsFootballThreeView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgBasketballPlay)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel
                                        .nextScreen = "BasketballPlaygroundThreeView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgBasketballPlay2)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel
                                        .nextScreen = "BasketballPlaygroundTwoView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgBasketballPlay3)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel
                                        .nextScreen = "BasketballPlaygroundOneView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgFootballPlaygr)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "FootballPlaygroundOneView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgFootballPlaygr2)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel.nextScreen = "FootballPlaygroundTwoView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                                VStack {
                                    Text(StringConstants.kMsgFootballPlaygr3)
                                        .font(Font.system(size: getRelativeHeight(20.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(343.0),
                                               height: getRelativeHeight(23.0), alignment: .leading)
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .padding(.horizontal, getRelativeWidth(20.0))
                                    Divider()
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(1.0), alignment: .center)
                                        .background(ColorConstants.Bluegray400)
                                        .padding(.top, getRelativeHeight(5.0))
                                }
                                .onTapGesture {
                                    appnavigationViewModel
                                        .nextScreen = "FootballPlaygroundThreeView"
                                }
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(48.0))
                                .background(ColorConstants.WhiteA700)
                            }
                        }
                        .frame(width: getRelativeWidth(375.0), alignment: .topLeading)
                        .background(ColorConstants.WhiteA700)
                    }
                }
                .frame(width: getRelativeWidth(375.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: LandingPageOneView(),
                                   tag: "LandingPageOneView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ManageyoureventView(),
                                   tag: "ManageyoureventView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ProfileView(),
                                   tag: "ProfileView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: EventCreatedView(),
                                   tag: "EventCreatedView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LandingPageTwoView(),
                                   tag: "LandingPageTwoView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ConnexionView(),
                                   tag: "ConnexionView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HomePageView(),
                                   tag: "HomePageView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: EventsView(),
                                   tag: "EventsView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SignUpOneView(),
                                   tag: "SignUpOneView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SignUpTwoView(),
                                   tag: "SignUpTwoView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
                Group {
                    NavigationLink(destination: MapsBasketballView(),
                                   tag: "MapsBasketballView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MapsFootballView(),
                                   tag: "MapsFootballView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MapsBasketballThreeView(),
                                   tag: "MapsBasketballThreeView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MapsBasketballTwoView(),
                                   tag: "MapsBasketballTwoView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MapsBasketballOneView(),
                                   tag: "MapsBasketballOneView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MapsFootballOneView(),
                                   tag: "MapsFootballOneView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MapsFootballTwoView(),
                                   tag: "MapsFootballTwoView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MapsFootballThreeView(),
                                   tag: "MapsFootballThreeView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: BasketballPlaygroundThreeView(),
                                   tag: "BasketballPlaygroundThreeView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: BasketballPlaygroundTwoView(),
                                   tag: "BasketballPlaygroundTwoView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
                Group {
                    NavigationLink(destination: BasketballPlaygroundOneView(),
                                   tag: "BasketballPlaygroundOneView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FootballPlaygroundOneView(),
                                   tag: "FootballPlaygroundOneView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FootballPlaygroundTwoView(),
                                   tag: "FootballPlaygroundTwoView",
                                   selection: $appnavigationViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FootballPlaygroundThreeView(),
                                   tag: "FootballPlaygroundThreeView",
                                   selection: $appnavigationViewModel.nextScreen,
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

struct AppnavigationView_Previews: PreviewProvider {
    static var previews: some View {
        AppnavigationView()
    }
}
