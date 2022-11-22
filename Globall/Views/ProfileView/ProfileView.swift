import SwiftUI

struct ProfileView: View {
    @StateObject var profileViewModel = ProfileViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .trailing) {
                    Image("img_whitebackgroun_1")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(812.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    VStack {
                        VStack {
                            ZStack(alignment: .bottomTrailing) {
                                Image("img_will1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(321.0),
                                           height: getRelativeHeight(188.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                               bottomLeft: 20.0, bottomRight: 20.0))
                                    .padding(.bottom, getRelativeHeight(78.0))
                                VStack {
                                    Text(StringConstants.kLbl23k)
                                        .font(FontScheme
                                            .kRobotoRomanMedium(size: getRelativeHeight(18.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(35.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.horizontal, getRelativeWidth(11.0))
                                    Text(StringConstants.kLblFollowers)
                                        .font(FontScheme
                                            .kRobotoRomanRegular(size: getRelativeHeight(13.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Bluegray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(56.0),
                                               height: getRelativeHeight(15.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(7.0))
                                }
                                .frame(width: getRelativeWidth(56.0),
                                       height: getRelativeHeight(40.0), alignment: .bottomTrailing)
                                .padding(.top, getRelativeHeight(208.34))
                                .padding(.leading, getRelativeWidth(259.0))
                                VStack {
                                    Text(StringConstants.kLbl256)
                                        .font(FontScheme
                                            .kRobotoRomanMedium(size: getRelativeHeight(18.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(31.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.horizontal, getRelativeWidth(16.0))
                                    Text(StringConstants.kLblFollowings)
                                        .font(FontScheme
                                            .kRobotoRomanRegular(size: getRelativeHeight(13.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black90091)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(63.0),
                                               height: getRelativeHeight(15.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(7.0))
                                }
                                .frame(width: getRelativeWidth(63.0),
                                       height: getRelativeHeight(40.0), alignment: .bottomLeading)
                                .padding(.top, getRelativeHeight(208.6))
                                .padding(.trailing, getRelativeWidth(251.0))
                                Image("img_profilpic")
                                    .resizable()
                                    .frame(width: getRelativeWidth(103.0),
                                           height: getRelativeWidth(103.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                    .padding(.top, getRelativeHeight(137.0))
                                    .padding(.horizontal, getRelativeWidth(109.0))
                                Text(StringConstants.kLblWill)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(22.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(38.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(244.39))
                                    .padding(.horizontal, getRelativeWidth(141.03))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(321.0), height: getRelativeHeight(266.0),
                                   alignment: .leading)
                            .padding(.horizontal, getRelativeWidth(18.0))
                            Text(StringConstants.kMsgILikeToPlay)
                                .font(FontScheme.kRobotoRomanRegular(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(200.0),
                                       height: getRelativeHeight(16.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(6.0))
                                .padding(.horizontal, getRelativeWidth(79.0))
                            VStack {
                                HStack {
                                    Image("img_profilpic")
                                        .resizable()
                                        .frame(width: getRelativeWidth(50.0),
                                               height: getRelativeWidth(50.0), alignment: .center)
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .clipShape(Circle())
                                    VStack {
                                        Text(StringConstants.kLblMyLastMatch)
                                            .font(FontScheme
                                                .kMontserratRomanRegular(size: getRelativeHeight(10.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black90087)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(71.0),
                                                   height: getRelativeHeight(12.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLbl10)
                                            .font(FontScheme
                                                .kMontagaRegular(size: getRelativeHeight(22.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(27.0),
                                                   height: getRelativeHeight(22.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(9.0))
                                            .padding(.horizontal, getRelativeWidth(22.0))
                                    }
                                    .frame(width: getRelativeWidth(71.0),
                                           height: getRelativeHeight(43.0), alignment: .top)
                                    .padding(.bottom, getRelativeHeight(6.0))
                                    .padding(.leading, getRelativeWidth(21.0))
                                    Image("img_chrisrock2014")
                                        .resizable()
                                        .frame(width: getRelativeWidth(51.0),
                                               height: getRelativeHeight(50.0), alignment: .center)
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .clipShape(Capsule())
                                        .padding(.leading, getRelativeWidth(23.0))
                                }
                                .frame(width: getRelativeWidth(216.0),
                                       height: getRelativeHeight(50.0), alignment: .center)
                                .padding(.top, getRelativeHeight(26.0))
                                .padding(.leading, getRelativeWidth(63.0))
                                .padding(.trailing, getRelativeWidth(60.0))
                                HStack {
                                    Text(StringConstants.kLblMe)
                                        .font(FontScheme.kLatoBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(18.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(1.0))
                                    Text(StringConstants.kLblPigaleCourt)
                                        .font(FontScheme.kLatoBold(size: getRelativeHeight(10.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(55.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(5.0))
                                        .padding(.leading, getRelativeWidth(43.0))
                                    Text(StringConstants.kLblChris)
                                        .font(FontScheme.kLatoBold(size: getRelativeHeight(12.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(28.0),
                                               height: getRelativeHeight(12.0),
                                               alignment: .topLeading)
                                        .padding(.bottom, getRelativeHeight(5.0))
                                        .padding(.leading, getRelativeWidth(44.0))
                                }
                                .frame(width: getRelativeWidth(188.0),
                                       height: getRelativeHeight(17.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(11.0))
                                .padding(.horizontal, getRelativeWidth(63.0))
                            }
                            .frame(width: getRelativeWidth(339.0), height: getRelativeHeight(129.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                    bottomRight: 20.0)
                                    .stroke(ColorConstants.Black90014,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                       bottomLeft: 20.0, bottomRight: 20.0)
                                    .fill(ColorConstants.WhiteA7007f))
                            .padding(.top, getRelativeHeight(15.0))
                            .padding(.horizontal, getRelativeWidth(9.0))
                            ZStack(alignment: .bottomLeading) {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(339.0),
                                           height: getRelativeHeight(220.0), alignment: .leading)
                                    .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                            bottomLeft: 20.0, bottomRight: 20.0)
                                            .stroke(ColorConstants.Black90014,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                               bottomLeft: 20.0, bottomRight: 20.0)
                                            .fill(ColorConstants.WhiteA7007f))
                                    .padding(.leading, getRelativeWidth(9.0))
                                    .padding(.trailing, getRelativeWidth(26.0))
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblWeekOverview)
                                        .font(FontScheme
                                            .kMontserratSemiBold(size: getRelativeHeight(19.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(150.0),
                                               height: getRelativeHeight(19.0),
                                               alignment: .topLeading)
                                        .padding(.horizontal, getRelativeWidth(26.0))
                                    HStack(spacing: 0) {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack {
                                                ForEach(0 ... 1, id: \.self) { index in
                                                    CardCell()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: getRelativeWidth(236.0), alignment: .leading)
                                    .padding(.vertical, getRelativeHeight(17.0))
                                    .padding(.horizontal, getRelativeWidth(24.0))
                                }
                                .frame(width: getRelativeWidth(374.0),
                                       height: getRelativeHeight(188.0), alignment: .bottomLeading)
                                .padding(.top, getRelativeHeight(20.23))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(374.0), height: getRelativeHeight(220.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(15.0))
                        }
                        .frame(width: getRelativeWidth(374.0), height: getRelativeHeight(668.0),
                               alignment: .leading)
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(308.0), height: getRelativeHeight(59.0),
                                   alignment: .leading)
                            .padding(.horizontal, getRelativeWidth(25.0))
                    }
                    .frame(width: getRelativeWidth(374.0), height: getRelativeHeight(748.0),
                           alignment: .trailing)
                    .padding(.leading, getRelativeWidth(16.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: MapsFootballView(),
                                   tag: "MapsFootballView",
                                   selection: $profileViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HomePageView(),
                                   tag: "HomePageView",
                                   selection: $profileViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: EventsView(),
                                   tag: "EventsView",
                                   selection: $profileViewModel.nextScreen,
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
