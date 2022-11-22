import SwiftUI

struct FootballPlaygroundThreeView: View {
    @StateObject var footballPlaygroundThreeViewModel = FootballPlaygroundThreeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .center) {
                    Image("img_whitebackgroun_21")
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
                        VStack {
                            HStack {
                                Image("img_arrowleft")
                                    .resizable()
                                    .frame(width: getRelativeWidth(15.0),
                                           height: getRelativeHeight(26.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .onTapGesture {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }
                                Text(StringConstants.kLblTiktokCourt)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(22.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(137.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(4.0))
                                    .padding(.leading, getRelativeWidth(69.0))
                            }
                            .frame(width: getRelativeWidth(223.0), height: getRelativeHeight(26.0),
                                   alignment: .leading)
                            .padding(.horizontal, getRelativeWidth(10.0))
                            Image("img_foot31")
                                .resizable()
                                .frame(width: getRelativeWidth(321.0),
                                       height: getRelativeHeight(188.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0))
                                .padding(.top, getRelativeHeight(29.0))
                                .padding(.horizontal, getRelativeWidth(5.0))
                            HStack {
                                Text(StringConstants.kLblEvents)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(22.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(70.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                Image("img_arrowleft_red_A200")
                                    .resizable()
                                    .frame(width: getRelativeWidth(5.0),
                                           height: getRelativeHeight(12.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(7.0))
                                    .padding(.leading, getRelativeWidth(45.0))
                                Text(StringConstants.kMsgTodayThursday)
                                    .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Red400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(163.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(7.0))
                                Image("img_arrowright_red_A200")
                                    .resizable()
                                    .frame(width: getRelativeWidth(5.0),
                                           height: getRelativeHeight(12.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(7.0))
                                    .padding(.leading, getRelativeWidth(4.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(299.0), height: getRelativeHeight(22.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(19.0))
                            .padding(.horizontal, getRelativeWidth(10.0))
                            HStack {
                                Text(StringConstants.kLblTime)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(36.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(4.0))
                                Spacer()
                                HStack {
                                    Text(StringConstants.kLblMatch)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(46.0),
                                               height: getRelativeHeight(14.0),
                                               alignment: .topLeading)
                                    Text(StringConstants.kLblPlayers)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(54.0),
                                               height: getRelativeHeight(16.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(37.0))
                                    Text(StringConstants.kLblStatus)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(47.0),
                                               height: getRelativeHeight(14.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(32.0))
                                }
                                .frame(width: getRelativeWidth(216.0),
                                       height: getRelativeHeight(18.0), alignment: .center)
                            }
                            .frame(width: getRelativeWidth(314.0), height: getRelativeHeight(18.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(31.0))
                            .padding(.leading, getRelativeWidth(5.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                Text(StringConstants.kLbl1416)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(42.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(5.0))
                                Spacer()
                                HStack {
                                    Text(StringConstants.kLbl2Vs2)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(39.0),
                                               height: getRelativeHeight(14.0),
                                               alignment: .topLeading)
                                    Image("img_juliep")
                                        .resizable()
                                        .frame(width: getRelativeWidth(17.0),
                                               height: getRelativeWidth(17.0), alignment: .center)
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .clipShape(Circle())
                                        .padding(.leading, getRelativeWidth(33.0))
                                    Image("img_ellipse5")
                                        .resizable()
                                        .frame(width: getRelativeWidth(17.0),
                                               height: getRelativeWidth(17.0), alignment: .center)
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .clipShape(Circle())
                                    Image("img_ellipse10_17X17")
                                        .resizable()
                                        .frame(width: getRelativeWidth(17.0),
                                               height: getRelativeWidth(17.0), alignment: .center)
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .clipShape(Circle())
                                    Image("img_ellipse8")
                                        .resizable()
                                        .frame(width: getRelativeWidth(17.0),
                                               height: getRelativeWidth(17.0), alignment: .center)
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .clipShape(Circle())
                                    Button(action: {}, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblFull)
                                                .font(FontScheme
                                                    .kPoppinsLight(size: getRelativeHeight(14.0)))
                                                .fontWeight(.light)
                                                .padding(.horizontal, getRelativeWidth(10.0))
                                                .padding(.vertical, getRelativeHeight(4.0))
                                                .foregroundColor(ColorConstants.Black9007f)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(54.0),
                                                       height: getRelativeHeight(22.0),
                                                       alignment: .center)
                                                .overlay(RoundedCorners()
                                                    .stroke(ColorConstants.Red400, lineWidth: 1))
                                                .background(RoundedCorners()
                                                    .fill(Color.clear.opacity(0.7)))
                                                .padding(.leading, getRelativeWidth(21.0))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(54.0),
                                           height: getRelativeHeight(22.0), alignment: .center)
                                    .overlay(RoundedCorners()
                                        .stroke(ColorConstants.Red400, lineWidth: 1))
                                    .background(RoundedCorners().fill(Color.clear.opacity(0.7)))
                                    .padding(.leading, getRelativeWidth(21.0))
                                }
                                .frame(width: getRelativeWidth(215.0),
                                       height: getRelativeHeight(22.0), alignment: .center)
                            }
                            .frame(width: getRelativeWidth(316.0), height: getRelativeHeight(22.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(15.0))
                            .padding(.horizontal, getRelativeWidth(6.0))
                            HStack {
                                Text(StringConstants.kLbl151630)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(62.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(4.0))
                                Text(StringConstants.kLbl4Vs4)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(41.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(4.0))
                                    .padding(.leading, getRelativeWidth(41.0))
                                Image("img_ellipse58")
                                    .resizable()
                                    .frame(width: getRelativeWidth(17.0),
                                           height: getRelativeWidth(17.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                    .padding(.leading, getRelativeWidth(39.0))
                                Image("img_ellipse59")
                                    .resizable()
                                    .frame(width: getRelativeWidth(17.0),
                                           height: getRelativeWidth(17.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                Image("img_ellipse60")
                                    .resizable()
                                    .frame(width: getRelativeWidth(17.0),
                                           height: getRelativeWidth(17.0), alignment: .center)
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .clipShape(Circle())
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblJoin2)
                                            .font(FontScheme
                                                .kPoppinsLight(size: getRelativeHeight(14.0)))
                                            .fontWeight(.light)
                                            .padding(.horizontal, getRelativeWidth(10.0))
                                            .padding(.vertical, getRelativeHeight(4.0))
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(54.0),
                                                   height: getRelativeHeight(22.0),
                                                   alignment: .center)
                                            .overlay(RoundedCorners()
                                                .stroke(ColorConstants.RedA200, lineWidth: 1))
                                            .background(RoundedCorners()
                                                .fill(Color.clear.opacity(0.7)))
                                            .padding(.leading, getRelativeWidth(29.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(54.0),
                                       height: getRelativeHeight(22.0), alignment: .center)
                                .overlay(RoundedCorners()
                                    .stroke(ColorConstants.RedA200, lineWidth: 1))
                                .background(RoundedCorners().fill(Color.clear.opacity(0.7)))
                                .padding(.leading, getRelativeWidth(29.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(317.0), height: getRelativeHeight(22.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(13.0))
                            .padding(.leading, getRelativeWidth(5.0))
                            .padding(.trailing, getRelativeWidth(8.0))
                            HStack {
                                Text(StringConstants.kLbl2122)
                                    .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(44.0),
                                           height: getRelativeHeight(14.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(4.0))
                                Spacer()
                                HStack {
                                    Text(StringConstants.kLbl3Vs3)
                                        .font(FontScheme
                                            .kPoppinsRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(40.0),
                                               height: getRelativeHeight(14.0),
                                               alignment: .topLeading)
                                    Image("img_ellipse7")
                                        .resizable()
                                        .frame(width: getRelativeWidth(17.0),
                                               height: getRelativeWidth(17.0), alignment: .center)
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .clipShape(Circle())
                                        .padding(.leading, getRelativeWidth(48.0))
                                    Image("img_ellipse57")
                                        .resizable()
                                        .frame(width: getRelativeWidth(17.0),
                                               height: getRelativeWidth(17.0), alignment: .center)
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .clipShape(Circle())
                                    Button(action: {}, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblJoin2)
                                                .font(FontScheme
                                                    .kPoppinsLight(size: getRelativeHeight(14.0)))
                                                .fontWeight(.light)
                                                .padding(.horizontal, getRelativeWidth(10.0))
                                                .padding(.vertical, getRelativeHeight(4.0))
                                                .foregroundColor(ColorConstants.Black900)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(54.0),
                                                       height: getRelativeHeight(22.0),
                                                       alignment: .center)
                                                .overlay(RoundedCorners()
                                                    .stroke(ColorConstants.RedA200, lineWidth: 1))
                                                .background(RoundedCorners()
                                                    .fill(Color.clear.opacity(0.7)))
                                                .padding(.leading, getRelativeWidth(38.0))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(54.0),
                                           height: getRelativeHeight(22.0), alignment: .center)
                                    .overlay(RoundedCorners()
                                        .stroke(ColorConstants.RedA200, lineWidth: 1))
                                    .background(RoundedCorners().fill(Color.clear.opacity(0.7)))
                                    .padding(.leading, getRelativeWidth(38.0))
                                }
                                .frame(width: getRelativeWidth(214.0),
                                       height: getRelativeHeight(22.0), alignment: .center)
                            }
                            .frame(width: getRelativeWidth(316.0), height: getRelativeHeight(22.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(13.0))
                            .padding(.horizontal, getRelativeWidth(6.0))
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kMsgCreateANewEv)
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
                                        .padding(.top, getRelativeHeight(97.0))
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
                            .padding(.top, getRelativeHeight(97.0))
                        }
                        .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(582.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(30.0))
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
                    NavigationLink(destination: MapsFootballView(),
                                   tag: "MapsFootballView",
                                   selection: $footballPlaygroundThreeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HomePageView(),
                                   tag: "HomePageView",
                                   selection: $footballPlaygroundThreeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: EventsView(),
                                   tag: "EventsView",
                                   selection: $footballPlaygroundThreeViewModel.nextScreen,
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

struct FootballPlaygroundThreeView_Previews: PreviewProvider {
    static var previews: some View {
        FootballPlaygroundThreeView()
    }
}
