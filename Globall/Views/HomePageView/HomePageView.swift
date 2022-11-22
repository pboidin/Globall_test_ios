import SwiftUI

struct HomePageView: View {
    @StateObject var homePageViewModel = HomePageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .trailing) {
                    Image("img_whitebackgroun_4")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(812.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    VStack {
                        HStack {
                            HStack {
                                Image("img_blacktitle1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(147.0),
                                           height: getRelativeHeight(49.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Spacer()
                                Image("img_profilpic")
                                    .resizable()
                                    .frame(width: getRelativeWidth(49.0),
                                           height: getRelativeWidth(49.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                    .onTapGesture {
                                        homePageViewModel.nextScreen = "ProfileView"
                                    }
                            }
                            .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(49.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(49.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(9.0))
                        ScrollView(.horizontal, showsIndicators: false) {
                            VStack(alignment: .leading, spacing: 0) {
                                HStack {
                                    Text(StringConstants.kLblMySchedule)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(101.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLblViewAll)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray501)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(53.0),
                                               height: getRelativeHeight(14.0),
                                               alignment: .topLeading)
                                        .padding(.bottom, getRelativeHeight(5.0))
                                        .padding(.leading, getRelativeWidth(182.0))
                                }
                                .frame(width: getRelativeWidth(337.0),
                                       height: getRelativeHeight(19.0), alignment: .leading)
                                .padding(.leading, getRelativeWidth(4.0))
                                .padding(.trailing, getRelativeWidth(4.0))
                                HStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kMsgParkRunningRo)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.Gray900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(141.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                            .padding(.trailing)
                                        HStack {
                                            Button(action: {}, label: {
                                                Image("img_icontimelight")
                                            })
                                            .frame(width: getRelativeWidth(13.0),
                                                   height: getRelativeWidth(13.0),
                                                   alignment: .center)
                                            .overlay(RoundedCorners(topLeft: 6.665, topRight: 6.665,
                                                                    bottomLeft: 6.665,
                                                                    bottomRight: 6.665)
                                                    .stroke(ColorConstants.Gray501,
                                                            lineWidth: 1))
                                            .background(RoundedCorners(topLeft: 6.665,
                                                                       topRight: 6.665,
                                                                       bottomLeft: 6.665,
                                                                       bottomRight: 6.665)
                                                    .fill(Color.clear.opacity(0.7)))
                                            Text(StringConstants.kLblToday600Pm)
                                                .font(FontScheme
                                                    .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                                .fontWeight(.medium)
                                                .foregroundColor(ColorConstants.Gray501)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(91.0),
                                                       height: getRelativeHeight(12.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(5.0))
                                                .padding(.leading, getRelativeWidth(7.0))
                                        }
                                        .frame(width: getRelativeWidth(115.0),
                                               height: getRelativeHeight(20.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(4.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                        HStack {
                                            Spacer()
                                            ZStack(alignment: .center) {
                                                Image("img_ellipse9")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(40.0),
                                                           height: getRelativeWidth(40.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipShape(Circle())
                                                    .clipShape(Circle())
                                                    .padding(.trailing, getRelativeWidth(56.0))
                                                Image("img_ellipse10")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(40.0),
                                                           height: getRelativeWidth(40.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipShape(Circle())
                                                    .clipShape(Circle())
                                                    .padding(.horizontal, getRelativeWidth(28.0))
                                                Image("img_ellipse11")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(40.0),
                                                           height: getRelativeWidth(40.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipShape(Circle())
                                                    .clipShape(Circle())
                                                    .padding(.leading, getRelativeWidth(56.0))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(96.0),
                                                   height: getRelativeHeight(40.0),
                                                   alignment: .center)
                                            Spacer()
                                            Text(StringConstants.kLbl2Friends)
                                                .font(FontScheme
                                                    .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                                .fontWeight(.medium)
                                                .foregroundColor(ColorConstants.Gray900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(71.0),
                                                       height: getRelativeHeight(14.0),
                                                       alignment: .topLeading)
                                                .padding(.top, getRelativeHeight(12.0))
                                                .padding(.bottom, getRelativeHeight(13.0))
                                            Spacer()
                                        }
                                        .frame(width: getRelativeWidth(171.0),
                                               height: getRelativeHeight(40.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(12.0))
                                    }
                                    .frame(width: getRelativeWidth(171.0),
                                           height: getRelativeHeight(95.0), alignment: .center)
                                    .padding(.vertical, getRelativeHeight(16.0))
                                    .padding(.leading, getRelativeWidth(20.0))
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(6.0),
                                               height: getRelativeHeight(12.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(57.0))
                                        .padding(.leading, getRelativeWidth(113.0))
                                }
                                .frame(width: getRelativeWidth(339.0),
                                       height: getRelativeHeight(127.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                        bottomLeft: 20.0, bottomRight: 20.0)
                                        .stroke(ColorConstants.Black90014,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0)
                                        .fill(ColorConstants.WhiteA7007f))
                                .padding(.top, getRelativeHeight(14.0))
                                .padding(.leading, getRelativeWidth(4.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                HStack {
                                    Text(StringConstants.kLblUpcomingEvents)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(141.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLblViewAll)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray501)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(53.0),
                                               height: getRelativeHeight(14.0),
                                               alignment: .topLeading)
                                        .padding(.bottom, getRelativeHeight(5.0))
                                        .padding(.leading, getRelativeWidth(142.0))
                                }
                                .frame(width: getRelativeWidth(337.0),
                                       height: getRelativeHeight(19.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(23.0))
                                .padding(.leading, getRelativeWidth(4.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                VStack(alignment: .leading, spacing: 0) {
                                    ZStack(alignment: .trailing) {
                                        HStack {
                                            VStack {
                                                Button(action: {}, label: {
                                                    HStack(spacing: 0) {
                                                        Text(StringConstants.kLblRegisterNow)
                                                            .font(FontScheme
                                                                .kPoppinsSemiBold(size: getRelativeHeight(10.0)))
                                                            .fontWeight(.semibold)
                                                            .padding(.horizontal,
                                                                     getRelativeWidth(7.0))
                                                            .padding(.vertical,
                                                                     getRelativeHeight(7.0))
                                                            .foregroundColor(ColorConstants.Gray51)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.center)
                                                            .frame(width: getRelativeWidth(87.0),
                                                                   height: getRelativeHeight(25.0),
                                                                   alignment: .center)
                                                            .background(RoundedCorners(topLeft: 7.0,
                                                                                       topRight: 7.0,
                                                                                       bottomLeft: 7.0,
                                                                                       bottomRight: 7.0)
                                                                    .fill(ColorConstants.Gray800))
                                                            .padding(.vertical,
                                                                     getRelativeHeight(119.0))
                                                            .padding(.horizontal,
                                                                     getRelativeWidth(13.0))
                                                    }
                                                })
                                                .frame(width: getRelativeWidth(87.0),
                                                       height: getRelativeHeight(25.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 7.0,
                                                                           topRight: 7.0,
                                                                           bottomLeft: 7.0,
                                                                           bottomRight: 7.0)
                                                        .fill(ColorConstants.Gray800))
                                                .padding(.vertical, getRelativeHeight(119.0))
                                                .padding(.horizontal, getRelativeWidth(13.0))
                                            }
                                            .frame(width: getRelativeWidth(307.0),
                                                   height: getRelativeHeight(153.0),
                                                   alignment: .center)
                                            .overlay(RoundedCorners(topLeft: 14.55, topRight: 14.55,
                                                                    bottomLeft: 14.55,
                                                                    bottomRight: 14.55)
                                                    .stroke(ColorConstants.TealA400,
                                                            lineWidth: 1))
                                            .background(RoundedCorners(topLeft: 14.55,
                                                                       topRight: 14.55,
                                                                       bottomLeft: 14.55,
                                                                       bottomRight: 14.55)
                                                    .fill(ColorConstants.DeepPurple300))
                                            Image("img_rectangle43")
                                                .resizable()
                                                .frame(width: getRelativeWidth(307.0),
                                                       height: getRelativeHeight(153.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(15.0))
                                        }
                                        .frame(width: getRelativeWidth(307.0),
                                               height: getRelativeHeight(153.0),
                                               alignment: .bottomLeading)
                                        .padding(.top, getRelativeHeight(12.94))
                                        .padding(.trailing, getRelativeWidth(17.07))
                                        Image("img_littleboyins")
                                            .resizable()
                                            .frame(width: getRelativeWidth(185.0),
                                                   height: getRelativeHeight(165.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.leading, getRelativeWidth(140.39))
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(StringConstants.kMsgItSTimeToGe)
                                                .font(FontScheme
                                                    .kPoppinsMedium(size: getRelativeHeight(12.389519)))
                                                .fontWeight(.medium)
                                                .foregroundColor(ColorConstants.WhiteA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(89.0),
                                                       height: getRelativeHeight(14.0),
                                                       alignment: .topLeading)
                                                .padding(.trailing)
                                            Text(StringConstants.kLblBackontrack)
                                                .font(FontScheme
                                                    .kPoppinsSemiBold(size: getRelativeHeight(23.321972)))
                                                .fontWeight(.semibold)
                                                .foregroundColor(ColorConstants.TealA400)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(135.0),
                                                       height: getRelativeHeight(23.0),
                                                       alignment: .topLeading)
                                        }
                                        .frame(width: getRelativeWidth(135.0),
                                               height: getRelativeHeight(39.0),
                                               alignment: .bottomLeading)
                                        .padding(.top, getRelativeHeight(81.02))
                                        .padding(.trailing, getRelativeWidth(176.95))
                                        ZStack(alignment: .topTrailing) {
                                            Image("img_vector_58X50")
                                                .resizable()
                                                .frame(width: getRelativeWidth(50.0),
                                                       height: getRelativeHeight(58.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(14.0))
                                                .padding(.trailing, getRelativeWidth(9.0))
                                            VStack(alignment: .leading, spacing: 0) {
                                                Text(StringConstants.kLbl10Oct)
                                                    .font(FontScheme
                                                        .kAntonioBold(size: getRelativeHeight(18.0)))
                                                    .fontWeight(.bold)
                                                    .foregroundColor(ColorConstants.WhiteA700)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(42.0),
                                                           height: getRelativeHeight(18.0),
                                                           alignment: .topLeading)
                                                Text(StringConstants.kLbl630am)
                                                    .font(FontScheme
                                                        .kPoppinsSemiBold(size: getRelativeHeight(10.0)))
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(ColorConstants.Gray801)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(38.0),
                                                           height: getRelativeHeight(10.0),
                                                           alignment: .topLeading)
                                                    .padding(.top, getRelativeHeight(5.0))
                                                    .padding(.horizontal, getRelativeWidth(2.0))
                                            }
                                            .frame(width: getRelativeWidth(42.0),
                                                   height: getRelativeHeight(33.0),
                                                   alignment: .topTrailing)
                                            .padding(.bottom, getRelativeHeight(20.73))
                                            .padding(.leading, getRelativeWidth(18.0))
                                        }
                                        .hideNavigationBar()
                                        .frame(width: getRelativeWidth(73.0),
                                               height: getRelativeHeight(58.0),
                                               alignment: .topLeading)
                                        .padding(.bottom, getRelativeHeight(95.09))
                                        .padding(.trailing, getRelativeWidth(252.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(325.0),
                                           height: getRelativeHeight(166.0), alignment: .leading)
                                    .padding(.trailing)
                                    HStack {
                                        Text(StringConstants.kLblJoinTheRun)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray901)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(94.0),
                                                   height: getRelativeHeight(14.0),
                                                   alignment: .topLeading)
                                        HStack {
                                            Text(StringConstants.kLblSeeAll)
                                                .font(FontScheme
                                                    .kPoppinsMedium(size: getRelativeHeight(10.0)))
                                                .fontWeight(.medium)
                                                .foregroundColor(ColorConstants.Gray600Ce)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(34.0),
                                                       height: getRelativeHeight(10.0),
                                                       alignment: .topLeading)
                                            Image("img_vector_gray_600")
                                                .resizable()
                                                .frame(width: getRelativeWidth(4.0),
                                                       height: getRelativeHeight(7.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Image("img_vector_gray_600")
                                                .resizable()
                                                .frame(width: getRelativeWidth(4.0),
                                                       height: getRelativeHeight(7.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                        }
                                        .frame(width: getRelativeWidth(44.0),
                                               height: getRelativeHeight(10.0), alignment: .center)
                                        .padding(.leading, getRelativeWidth(170.0))
                                    }
                                    .frame(width: getRelativeWidth(308.0),
                                           height: getRelativeHeight(14.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(6.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                    HStack {
                                        Image("img_location")
                                            .resizable()
                                            .frame(width: getRelativeWidth(8.0),
                                                   height: getRelativeHeight(9.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(4.0))
                                        Text(StringConstants.kMsgJardinDeLuxem)
                                            .font(FontScheme
                                                .kPoppinsRegular(size: getRelativeHeight(11.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray803)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(155.0),
                                                   height: getRelativeHeight(13.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(6.0))
                                    }
                                    .frame(width: getRelativeWidth(171.0),
                                           height: getRelativeHeight(15.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(11.0))
                                    .padding(.trailing, getRelativeWidth(10.0))
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(213.0), alignment: .trailing)
                                .padding(.top, getRelativeHeight(9.0))
                                HStack {
                                    Text(StringConstants.kMsgYourFavourite)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(193.0),
                                               height: getRelativeHeight(16.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLblViewAll)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(14.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Gray501)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(53.0),
                                               height: getRelativeHeight(14.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(90.0))
                                }
                                .frame(width: getRelativeWidth(337.0),
                                       height: getRelativeHeight(16.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(32.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                                HStack {
                                    Image("img_rectangle37")
                                        .resizable()
                                        .frame(width: getRelativeWidth(144.0),
                                               height: getRelativeHeight(67.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                                   bottomLeft: 15.0,
                                                                   bottomRight: 15.0))
                                        .padding(.vertical, getRelativeHeight(15.0))
                                        .padding(.leading, getRelativeWidth(17.0))
                                    Spacer()
                                    Image("img_rectangle38")
                                        .resizable()
                                        .frame(width: getRelativeWidth(144.0),
                                               height: getRelativeHeight(67.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 15.0, topRight: 15.0,
                                                                   bottomLeft: 15.0,
                                                                   bottomRight: 15.0))
                                        .padding(.vertical, getRelativeHeight(15.0))
                                        .padding(.leading, getRelativeWidth(17.0))
                                }
                                .frame(width: getRelativeWidth(339.0),
                                       height: getRelativeHeight(97.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                        bottomLeft: 20.0, bottomRight: 20.0)
                                        .stroke(ColorConstants.Black90014,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0)
                                        .fill(ColorConstants.WhiteA7007f))
                                .padding(.top, getRelativeHeight(10.0))
                                .padding(.bottom, getRelativeHeight(12.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(367.0), alignment: .topLeading)
                        }
                        .padding(.top, getRelativeHeight(19.0))
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(308.0), height: getRelativeHeight(59.0),
                                   alignment: .leading)
                            .padding(.horizontal, getRelativeWidth(18.0))
                    }
                    .frame(width: getRelativeWidth(367.0), height: getRelativeHeight(747.0),
                           alignment: .trailing)
                    .padding(.leading, getRelativeWidth(23.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: MapsFootballView(),
                                   tag: "MapsFootballView",
                                   selection: $homePageViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: EventsView(),
                                   tag: "EventsView",
                                   selection: $homePageViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ProfileView(),
                                   tag: "ProfileView",
                                   selection: $homePageViewModel.nextScreen,
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

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
