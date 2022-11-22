import SwiftUI

struct EventCreatedView: View {
    @StateObject var eventCreatedViewModel = EventCreatedViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .center) {
                    Image("img_whitebackgroun_2")
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
                            }
                            .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(49.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(49.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(9.0))
                        VStack {
                            VStack(alignment: .leading, spacing: 0) {
                                HStack {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Image("img_vector11")
                                            .resizable()
                                            .frame(width: getRelativeWidth(23.0),
                                                   height: getRelativeHeight(50.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Image("img_vector8")
                                            .resizable()
                                            .frame(width: getRelativeWidth(18.0),
                                                   height: getRelativeHeight(47.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(100.0))
                                            .padding(.trailing, getRelativeWidth(5.0))
                                    }
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeHeight(198.0), alignment: .bottom)
                                    .padding(.top, getRelativeHeight(37.0))
                                    Spacer()
                                    ZStack(alignment: .topTrailing) {
                                        HStack {
                                            Image("img_vector13")
                                                .resizable()
                                                .frame(width: getRelativeWidth(35.0),
                                                       height: getRelativeHeight(50.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                            Image("img_vector15")
                                                .resizable()
                                                .frame(width: getRelativeWidth(56.0),
                                                       height: getRelativeHeight(55.0),
                                                       alignment: .center)
                                                .scaledToFit()
                                                .clipped()
                                                .padding(.leading, getRelativeWidth(191.0))
                                        }
                                        .frame(width: getRelativeWidth(283.0),
                                               height: getRelativeHeight(66.0),
                                               alignment: .bottomLeading)
                                        .padding(.top, getRelativeHeight(116.0))
                                        Image("img_vector14")
                                            .resizable()
                                            .frame(width: getRelativeWidth(67.0),
                                                   height: getRelativeHeight(73.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.bottom, getRelativeHeight(152.0))
                                            .padding(.leading, getRelativeWidth(185.0))
                                        Image("img_vector18")
                                            .resizable()
                                            .frame(width: getRelativeWidth(50.0),
                                                   height: getRelativeHeight(33.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.top, getRelativeHeight(192.0))
                                            .padding(.leading, getRelativeWidth(136.0))
                                        Image("img_image10")
                                            .resizable()
                                            .frame(width: getRelativeWidth(200.0),
                                                   height: getRelativeWidth(200.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .padding(.leading, getRelativeWidth(10.0))
                                            .padding(.trailing, getRelativeWidth(73.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(283.0),
                                           height: getRelativeHeight(225.0), alignment: .top)
                                    .padding(.bottom, getRelativeHeight(10.0))
                                }
                                .frame(width: getRelativeWidth(335.0),
                                       height: getRelativeHeight(235.0), alignment: .center)
                                .padding(.trailing)
                                ZStack(alignment: .bottomLeading) {
                                    Image("img_vector19")
                                        .resizable()
                                        .frame(width: getRelativeWidth(67.0),
                                               height: getRelativeHeight(82.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.bottom, getRelativeHeight(10.0))
                                        .padding(.leading, getRelativeWidth(248.0))
                                    Image("img_vector17")
                                        .resizable()
                                        .frame(width: getRelativeWidth(82.0),
                                               height: getRelativeHeight(80.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(12.0))
                                        .padding(.trailing, getRelativeWidth(245.0))
                                    Text(StringConstants.kLblCongrats)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(45.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Black900Cc)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(255.0),
                                               height: getRelativeHeight(45.0),
                                               alignment: .topLeading)
                                        .padding(.bottom, getRelativeHeight(44.36))
                                        .padding(.trailing, getRelativeWidth(48.0))
                                    Text(StringConstants.kMsgYourBasketball)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(18.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(337.0),
                                               height: getRelativeHeight(18.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(54.14))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(337.0),
                                       height: getRelativeHeight(92.0), alignment: .center)
                                .padding(.top, getRelativeHeight(13.0))
                                .padding(.leading, getRelativeWidth(12.0))
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kMsgShareItWithY)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(15.0)))
                                            .fontWeight(.medium)
                                            .padding(.horizontal, getRelativeWidth(15.0))
                                            .padding(.vertical, getRelativeHeight(6.0))
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(216.0),
                                                   height: getRelativeHeight(35.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 17.5,
                                                                       topRight: 17.5,
                                                                       bottomLeft: 17.5,
                                                                       bottomRight: 17.5)
                                                    .fill(ColorConstants.Red401))
                                            .shadow(color: ColorConstants.Black90033, radius: 40,
                                                    x: 0, y: 20)
                                            .padding(.top, getRelativeHeight(12.0))
                                            .padding(.horizontal, getRelativeWidth(12.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(216.0),
                                       height: getRelativeHeight(35.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 17.5, topRight: 17.5,
                                                           bottomLeft: 17.5, bottomRight: 17.5)
                                        .fill(ColorConstants.Red401))
                                .shadow(color: ColorConstants.Black90033, radius: 40, x: 0, y: 20)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.horizontal, getRelativeWidth(12.0))
                                HStack {
                                    Image("img_vector16")
                                        .resizable()
                                        .frame(width: getRelativeWidth(40.0),
                                               height: getRelativeHeight(41.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.bottom, getRelativeHeight(48.0))
                                    Image("img_vector21")
                                        .resizable()
                                        .frame(width: getRelativeWidth(19.0),
                                               height: getRelativeHeight(46.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(38.0))
                                        .padding(.leading, getRelativeWidth(51.0))
                                    Image("img_vector12")
                                        .resizable()
                                        .frame(width: getRelativeWidth(51.0),
                                               height: getRelativeHeight(57.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(32.0))
                                        .padding(.leading, getRelativeWidth(55.0))
                                    Image("img_vector20")
                                        .resizable()
                                        .frame(width: getRelativeWidth(45.0),
                                               height: getRelativeHeight(46.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(9.0))
                                        .padding(.leading, getRelativeWidth(62.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(326.0),
                                       height: getRelativeHeight(89.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(7.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            }
                            .frame(width: getRelativeWidth(349.0), height: getRelativeHeight(486.0),
                                   alignment: .leading)
                            Button(action: {
                                eventCreatedViewModel.nextScreen = "ManageyoureventView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kMsgManageYourEve)
                                        .font(FontScheme
                                            .kPoppinsMedium(size: getRelativeHeight(15.0)))
                                        .fontWeight(.medium)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(6.0))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(216.0),
                                               height: getRelativeHeight(35.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 17.5, topRight: 17.5,
                                                                   bottomLeft: 17.5,
                                                                   bottomRight: 17.5)
                                                .fill(ColorConstants.Red401))
                                        .shadow(color: ColorConstants.Black90033, radius: 40, x: 0,
                                                y: 20)
                                        .padding(.top, getRelativeHeight(21.0))
                                        .padding(.horizontal, getRelativeWidth(66.0))
                                }
                            })
                            .frame(width: getRelativeWidth(216.0), height: getRelativeHeight(35.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 17.5, topRight: 17.5,
                                                       bottomLeft: 17.5, bottomRight: 17.5)
                                    .fill(ColorConstants.Red401))
                            .shadow(color: ColorConstants.Black90033, radius: 40, x: 0, y: 20)
                            .padding(.top, getRelativeHeight(21.0))
                            .padding(.horizontal, getRelativeWidth(66.0))
                        }
                        .frame(width: getRelativeWidth(349.0), height: getRelativeHeight(543.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(66.0))
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(308.0), height: getRelativeHeight(59.0),
                                   alignment: .center)
                            .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(349.0), height: getRelativeHeight(749.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(19.0))
                    .padding(.leading, getRelativeWidth(25.0))
                    .padding(.trailing, getRelativeWidth(16.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ManageyoureventView(),
                                   tag: "ManageyoureventView",
                                   selection: $eventCreatedViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MapsFootballView(),
                                   tag: "MapsFootballView",
                                   selection: $eventCreatedViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HomePageView(),
                                   tag: "HomePageView",
                                   selection: $eventCreatedViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: EventsView(),
                                   tag: "EventsView",
                                   selection: $eventCreatedViewModel.nextScreen,
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

struct EventCreatedView_Previews: PreviewProvider {
    static var previews: some View {
        EventCreatedView()
    }
}
