import SwiftUI

struct MapsBasketballThreeView: View {
    @StateObject var mapsBasketballThreeViewModel = MapsBasketballThreeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .center) {
                    Image("img_whitebackgroun_10")
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
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLblSportSMaps)
                                .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(22.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(142.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(93.0))
                            ZStack(alignment: .topTrailing) {
                                Image("img_mapsiclemap")
                                    .resizable()
                                    .frame(width: getRelativeWidth(330.0),
                                           height: getRelativeHeight(452.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                               bottomLeft: 20.0, bottomRight: 20.0))
                                VStack {
                                    Image("img_vector1")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeHeight(29.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.horizontal, getRelativeWidth(38.0))
                                        .onTapGesture {
                                            mapsBasketballThreeViewModel
                                                .nextScreen = "MapsBasketballOneView"
                                        }
                                    Image("img_vector1")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeHeight(29.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(92.0))
                                        .padding(.leading, getRelativeWidth(10.0))
                                        .onTapGesture {
                                            mapsBasketballThreeViewModel
                                                .nextScreen = "MapsBasketballTwoView"
                                        }
                                    Image("img_vector3")
                                        .resizable()
                                        .frame(width: getRelativeWidth(31.0),
                                               height: getRelativeHeight(40.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(4.0))
                                        .padding(.trailing, getRelativeWidth(10.0))
                                        .onTapGesture {
                                            mapsBasketballThreeViewModel
                                                .nextScreen = "BasketballPlaygroundThreeView"
                                        }
                                }
                                .frame(width: getRelativeWidth(223.0),
                                       height: getRelativeHeight(194.0), alignment: .topTrailing)
                                .padding(.bottom, getRelativeHeight(194.0))
                                .padding(.leading, getRelativeWidth(71.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(452.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(31.0))
                            Button(action: {
                                mapsBasketballThreeViewModel.nextScreen = "MapsFootballView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblBasketball)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(22.0)))
                                        .fontWeight(.regular)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(330.0),
                                               height: getRelativeHeight(43.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                                bottomLeft: 10.0, bottomRight: 10.0)
                                                .stroke(ColorConstants.Black90014,
                                                        lineWidth: 1))
                                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                                   bottomLeft: 10.0,
                                                                   bottomRight: 10.0)
                                                .fill(ColorConstants.WhiteA7007f))
                                        .padding(.top, getRelativeHeight(29.0))
                                }
                            })
                            .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(43.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                    bottomRight: 10.0)
                                    .stroke(ColorConstants.Black90014,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(ColorConstants.WhiteA7007f))
                            .padding(.top, getRelativeHeight(29.0))
                        }
                        .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(577.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(35.0))
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(308.0), height: getRelativeHeight(59.0),
                                   alignment: .center)
                            .padding(.horizontal, getRelativeWidth(11.0))
                    }
                    .frame(width: getRelativeWidth(332.0), height: getRelativeHeight(747.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(19.0))
                    .padding(.horizontal, getRelativeWidth(30.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: MapsBasketballOneView(),
                                   tag: "MapsBasketballOneView",
                                   selection: $mapsBasketballThreeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MapsFootballView(),
                                   tag: "MapsFootballView",
                                   selection: $mapsBasketballThreeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HomePageView(),
                                   tag: "HomePageView",
                                   selection: $mapsBasketballThreeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: EventsView(),
                                   tag: "EventsView",
                                   selection: $mapsBasketballThreeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: BasketballPlaygroundThreeView(),
                                   tag: "BasketballPlaygroundThreeView",
                                   selection: $mapsBasketballThreeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MapsBasketballTwoView(),
                                   tag: "MapsBasketballTwoView",
                                   selection: $mapsBasketballThreeViewModel.nextScreen,
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

struct MapsBasketballThreeView_Previews: PreviewProvider {
    static var previews: some View {
        MapsBasketballThreeView()
    }
}
