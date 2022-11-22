import SwiftUI

struct ManageyoureventView: View {
    @StateObject var manageyoureventViewModel = ManageyoureventViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .leading) {
                    Image("img_whitebackgroun_812X390")
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
                                        manageyoureventViewModel.nextScreen = "ProfileView"
                                    }
                            }
                            .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(49.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(49.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(31.0))
                        VStack {
                            Image("img_rectangle15")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(218.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kLblBasketballGame)
                                .font(FontScheme.kSFProDisplayMedium(size: getRelativeHeight(20.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(151.0),
                                       height: getRelativeHeight(40.0), alignment: .topLeading)
                                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                                .padding(.horizontal, getRelativeWidth(20.0))
                            HStack {
                                HStack {
                                    Image("img_uilcalender")
                                        .resizable()
                                        .frame(width: getRelativeWidth(32.0),
                                               height: getRelativeWidth(32.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kLbl15July)
                                            .font(FontScheme
                                                .kSFProDisplayHeavy(size: getRelativeHeight(17.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Bluegray400)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(55.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                            .shadow(color: ColorConstants.Black9003f, radius: 4,
                                                    x: 0, y: 4)
                                        Text(StringConstants.kLblFriday)
                                            .font(FontScheme
                                                .kSFProDisplayHeavyItalic(size: getRelativeHeight(17.0)))
                                            .fontWeight(.regular)
                                            .foregroundColor(ColorConstants.Gray600Ce)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(48.0),
                                                   height: getRelativeHeight(21.0),
                                                   alignment: .topLeading)
                                            .shadow(color: ColorConstants.Black9003f, radius: 4,
                                                    x: 0, y: 4)
                                            .padding(.trailing, getRelativeWidth(7.0))
                                    }
                                    .frame(width: getRelativeWidth(55.0),
                                           height: getRelativeHeight(43.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(15.0))
                                }
                                .frame(width: getRelativeWidth(102.0),
                                       height: getRelativeHeight(43.0), alignment: .center)
                                Spacer()
                                HStack {
                                    Image("img_akariconscloc")
                                        .resizable()
                                        .frame(width: getRelativeWidth(32.0),
                                               height: getRelativeWidth(32.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLbl8Pm)
                                        .font(FontScheme
                                            .kSFProDisplayHeavy(size: getRelativeHeight(17.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Bluegray400)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(40.0),
                                               height: getRelativeHeight(22.0),
                                               alignment: .topLeading)
                                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0,
                                                y: 4)
                                        .padding(.leading, getRelativeWidth(21.0))
                                }
                                .frame(width: getRelativeWidth(93.0),
                                       height: getRelativeHeight(32.0), alignment: .center)
                                .padding(.top, getRelativeHeight(5.0))
                                .padding(.bottom, getRelativeHeight(6.0))
                                .padding(.leading, getRelativeWidth(90.0))
                            }
                            .frame(width: getRelativeWidth(285.0), height: getRelativeHeight(43.0),
                                   alignment: .leading)
                            .padding(.horizontal, getRelativeWidth(16.0))
                            HStack {
                                Image("img_akariconsloca")
                                    .resizable()
                                    .frame(width: getRelativeWidth(32.0),
                                           height: getRelativeWidth(32.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLblEiffelSCourt)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(20.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(119.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .shadow(radius: 4)
                                    .padding(.bottom, getRelativeHeight(13.0))
                                    .padding(.leading, getRelativeWidth(21.0))
                            }
                            .frame(width: getRelativeWidth(172.0), height: getRelativeHeight(33.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(23.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                            HStack {
                                Image("img_ellipse17")
                                    .resizable()
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeWidth(40.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                    .padding(.bottom, getRelativeHeight(56.0))
                                Image("img_ellipse18")
                                    .resizable()
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeWidth(40.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                    .padding(.bottom, getRelativeHeight(56.0))
                                    .padding(.leading, getRelativeWidth(12.0))
                                Image("img_ellipse17_40X40")
                                    .resizable()
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeWidth(40.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                    .padding(.bottom, getRelativeHeight(56.0))
                                    .padding(.leading, getRelativeWidth(12.0))
                                Text(StringConstants.kLblVs)
                                    .font(FontScheme
                                        .kSFProDisplayBlack(size: getRelativeHeight(30.0)))
                                    .fontWeight(.black)
                                    .foregroundColor(ColorConstants.Gray50)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(34.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 4, y: 4)
                                    .padding(.top, getRelativeHeight(38.0))
                                    .padding(.bottom, getRelativeHeight(36.0))
                                    .padding(.leading, getRelativeWidth(10.0))
                                Image("img_ellipse19")
                                    .resizable()
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeWidth(40.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                    .padding(.top, getRelativeHeight(56.0))
                                    .padding(.leading, getRelativeWidth(11.0))
                                Image("img_ellipse16")
                                    .resizable()
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeWidth(40.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                    .padding(.top, getRelativeHeight(56.0))
                                    .padding(.leading, getRelativeWidth(12.0))
                                Button(action: {}, label: {
                                    Image("img_group20")
                                })
                                .frame(width: getRelativeWidth(40.0),
                                       height: getRelativeWidth(40.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0)
                                        .fill(ColorConstants.Bluegray100))
                                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                                .padding(.top, getRelativeHeight(56.0))
                                .padding(.leading, getRelativeWidth(12.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(343.0), height: getRelativeHeight(96.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(65.0))
                            .padding(.horizontal, getRelativeWidth(13.0))
                            Text(StringConstants.kLblCancel)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(15.0)))
                                .fontWeight(.medium)
                                .padding(.trailing, getRelativeWidth(7.0))
                                .padding(.leading, getRelativeWidth(4.0))
                                .padding(.vertical, getRelativeHeight(6.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(66.0),
                                       height: getRelativeHeight(35.0), alignment: .center)
                                .background(ColorConstants.Bluegray400)
                                .shadow(color: ColorConstants.Black90033, radius: 40, x: 0, y: 20)
                                .padding(.top, getRelativeHeight(28.0))
                                .padding(.horizontal, getRelativeWidth(37.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(582.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(27.0))
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(308.0), height: getRelativeHeight(59.0),
                                   alignment: .center)
                            .padding(.horizontal, getRelativeWidth(31.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(745.0),
                           alignment: .leading)
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ProfileView(),
                                   tag: "ProfileView",
                                   selection: $manageyoureventViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MapsFootballView(),
                                   tag: "MapsFootballView",
                                   selection: $manageyoureventViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HomePageView(),
                                   tag: "HomePageView",
                                   selection: $manageyoureventViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: EventsView(),
                                   tag: "EventsView",
                                   selection: $manageyoureventViewModel.nextScreen,
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

struct ManageyoureventView_Previews: PreviewProvider {
    static var previews: some View {
        ManageyoureventView()
    }
}
