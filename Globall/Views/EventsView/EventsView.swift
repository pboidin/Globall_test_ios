import SwiftUI

struct EventsView: View {
    @StateObject var eventsViewModel = EventsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .center) {
                    Image("img_whitebackgroun_5")
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
                        .padding(.horizontal, getRelativeWidth(17.0))
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                Text(StringConstants.kLblAll)
                                    .font(FontScheme
                                        .kSFProDisplaySemibold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(8.0))
                                    .padding(.bottom, getRelativeHeight(10.0))
                                    .padding(.top, getRelativeHeight(9.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(40.0),
                                           height: getRelativeWidth(40.0), alignment: .center)
                                    .background(ColorConstants.Red400)
                                Button(action: {}, label: {
                                    Image("img_group6")
                                })
                                .frame(width: getRelativeWidth(40.0),
                                       height: getRelativeWidth(40.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0)
                                        .fill(ColorConstants.Gray700B2))
                                .padding(.leading, getRelativeWidth(11.0))
                                Button(action: {}, label: {
                                    Image("img_group2")
                                })
                                .frame(width: getRelativeWidth(40.0),
                                       height: getRelativeWidth(40.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0)
                                        .fill(ColorConstants.Gray700B2))
                                .padding(.leading, getRelativeWidth(11.0))
                                Button(action: {}, label: {
                                    Image("img_group8")
                                })
                                .frame(width: getRelativeWidth(40.0),
                                       height: getRelativeWidth(40.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                           bottomLeft: 20.0, bottomRight: 20.0)
                                        .fill(ColorConstants.Gray700B2))
                                .padding(.leading, getRelativeWidth(11.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(193.0), height: getRelativeHeight(40.0),
                                   alignment: .leading)
                            .padding(.trailing)
                            ScrollView(.horizontal, showsIndicators: false) {
                                ZStack(alignment: .topLeading) {
                                    ZStack(alignment: .bottomLeading) {
                                        Image("img_rectangle8")
                                            .resizable()
                                            .frame(width: getRelativeWidth(190.0),
                                                   height: getRelativeWidth(190.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 15.0,
                                                                       topRight: 15.0,
                                                                       bottomLeft: 15.0,
                                                                       bottomRight: 15.0))
                                        ZStack {}
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(190.0),
                                                   height: getRelativeHeight(70.0),
                                                   alignment: .bottomLeading)
                                            .background(RoundedCorners(bottomLeft: 15.0,
                                                                       bottomRight: 15.0)
                                                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                .Bluegray1007f,
                                                            ColorConstants
                                                                .Bluegray1007f1]),
                                                        startPoint: .topLeading,
                                                        endPoint: .bottomTrailing)))
                                            .padding(.top, getRelativeHeight(120.0))
                                    }
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(190.0),
                                           height: getRelativeWidth(190.0),
                                           alignment: .bottomLeading)
                                    .padding(.top, getRelativeHeight(279.0))
                                    .padding(.trailing, getRelativeWidth(185.0))
                                    VStack {
                                        HStack {
                                            ZStack(alignment: .bottomLeading) {
                                                Image("img_rectangle8_190X190")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(190.0),
                                                           height: getRelativeWidth(190.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .background(RoundedCorners(topLeft: 15.0,
                                                                               topRight: 15.0,
                                                                               bottomLeft: 15.0,
                                                                               bottomRight: 15.0))
                                                VStack {
                                                    Button(action: {
                                                        eventsViewModel
                                                            .nextScreen = "EventCreatedView"
                                                    }, label: {
                                                        HStack(spacing: 0) {
                                                            Text(StringConstants.kLblJoin)
                                                                .font(FontScheme
                                                                    .kSFProDisplaySemibold(size: getRelativeHeight(20.0)))
                                                                .fontWeight(.semibold)
                                                                .padding(.horizontal,
                                                                         getRelativeWidth(16.0))
                                                                .padding(.vertical,
                                                                         getRelativeHeight(7.0))
                                                                .foregroundColor(ColorConstants
                                                                    .Gray300)
                                                                .minimumScaleFactor(0.5)
                                                                .multilineTextAlignment(.center)
                                                                .frame(width: getRelativeWidth(70.0),
                                                                       height: getRelativeHeight(35.0),
                                                                       alignment: .center)
                                                                .background(RoundedCorners(topLeft: 17.5,
                                                                                           topRight: 17.5,
                                                                                           bottomLeft: 17.5,
                                                                                           bottomRight: 17.5)
                                                                        .fill(ColorConstants
                                                                            .Red400))
                                                                .padding(.vertical,
                                                                         getRelativeHeight(22.0))
                                                                .padding(.horizontal,
                                                                         getRelativeWidth(11.0))
                                                        }
                                                    })
                                                    .frame(width: getRelativeWidth(70.0),
                                                           height: getRelativeHeight(35.0),
                                                           alignment: .center)
                                                    .background(RoundedCorners(topLeft: 17.5,
                                                                               topRight: 17.5,
                                                                               bottomLeft: 17.5,
                                                                               bottomRight: 17.5)
                                                            .fill(ColorConstants.Red400))
                                                    .padding(.vertical, getRelativeHeight(22.0))
                                                    .padding(.horizontal, getRelativeWidth(11.0))
                                                }
                                                .frame(width: getRelativeWidth(190.0),
                                                       height: getRelativeHeight(70.0),
                                                       alignment: .bottomLeading)
                                                .background(RoundedCorners(bottomLeft: 15.0,
                                                                           bottomRight: 15.0)
                                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                    .Bluegray100Cc,
                                                                ColorConstants
                                                                    .Bluegray100Cc1]),
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing)))
                                                .padding(.top, getRelativeHeight(120.0))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(190.0),
                                                   height: getRelativeWidth(190.0),
                                                   alignment: .center)
                                            Spacer()
                                            ZStack(alignment: .bottomLeading) {
                                                Image("img_rectangle10")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(190.0),
                                                           height: getRelativeWidth(190.0),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .background(RoundedCorners(topLeft: 15.0,
                                                                               topRight: 15.0,
                                                                               bottomLeft: 15.0,
                                                                               bottomRight: 15.0))
                                                VStack {
                                                    Button(action: {}, label: {
                                                        HStack(spacing: 0) {
                                                            Text(StringConstants.kLblJoin)
                                                                .font(FontScheme
                                                                    .kSFProDisplaySemibold(size: getRelativeHeight(20.0)))
                                                                .fontWeight(.semibold)
                                                                .padding(.horizontal,
                                                                         getRelativeWidth(16.0))
                                                                .padding(.vertical,
                                                                         getRelativeHeight(7.0))
                                                                .foregroundColor(ColorConstants
                                                                    .Gray300)
                                                                .minimumScaleFactor(0.5)
                                                                .multilineTextAlignment(.center)
                                                                .frame(width: getRelativeWidth(70.0),
                                                                       height: getRelativeHeight(35.0),
                                                                       alignment: .center)
                                                                .background(RoundedCorners(topLeft: 17.5,
                                                                                           topRight: 17.5,
                                                                                           bottomLeft: 17.5,
                                                                                           bottomRight: 17.5)
                                                                        .fill(ColorConstants
                                                                            .Red400))
                                                                .padding(.vertical,
                                                                         getRelativeHeight(23.0))
                                                                .padding(.leading,
                                                                         getRelativeWidth(113.0))
                                                                .padding(.trailing,
                                                                         getRelativeWidth(7.0))
                                                        }
                                                    })
                                                    .frame(width: getRelativeWidth(70.0),
                                                           height: getRelativeHeight(35.0),
                                                           alignment: .center)
                                                    .background(RoundedCorners(topLeft: 17.5,
                                                                               topRight: 17.5,
                                                                               bottomLeft: 17.5,
                                                                               bottomRight: 17.5)
                                                            .fill(ColorConstants.Red400))
                                                    .padding(.vertical, getRelativeHeight(23.0))
                                                    .padding(.leading, getRelativeWidth(113.0))
                                                    .padding(.trailing, getRelativeWidth(7.0))
                                                }
                                                .frame(width: getRelativeWidth(190.0),
                                                       height: getRelativeHeight(70.0),
                                                       alignment: .bottomLeading)
                                                .background(RoundedCorners(bottomLeft: 15.0,
                                                                           bottomRight: 15.0)
                                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                    .Bluegray100Cc,
                                                                ColorConstants
                                                                    .Bluegray100Cc1]),
                                                            startPoint: .topLeading,
                                                            endPoint: .bottomTrailing)))
                                                .padding(.top, getRelativeHeight(120.0))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(190.0),
                                                   height: getRelativeWidth(190.0),
                                                   alignment: .center)
                                            .padding(.leading, getRelativeWidth(17.0))
                                        }
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(190.0),
                                               alignment: .trailing)
                                        HStack {
                                            Text(StringConstants.kLblBasketballGame)
                                                .font(FontScheme
                                                    .kSFProDisplayMedium(size: getRelativeHeight(20.0)))
                                                .fontWeight(.medium)
                                                .foregroundColor(ColorConstants.Gray700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(151.0),
                                                       height: getRelativeHeight(20.0),
                                                       alignment: .topLeading)
                                            Spacer()
                                            Text(StringConstants.kLblTennisGame)
                                                .font(FontScheme
                                                    .kSFProDisplayMedium(size: getRelativeHeight(20.0)))
                                                .fontWeight(.medium)
                                                .foregroundColor(ColorConstants.Gray700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(116.0),
                                                       height: getRelativeHeight(20.0),
                                                       alignment: .topLeading)
                                        }
                                        .frame(width: getRelativeWidth(323.0),
                                               height: getRelativeHeight(20.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(9.0))
                                        .padding(.leading, getRelativeWidth(13.0))
                                        Text(StringConstants.kLblSat16th8pm)
                                            .font(FontScheme
                                                .kSFProDisplayLight(size: getRelativeHeight(17.0)))
                                            .fontWeight(.light)
                                            .foregroundColor(ColorConstants.Bluegray400)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(92.0),
                                                   height: getRelativeHeight(17.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(9.0))
                                            .padding(.horizontal, getRelativeWidth(24.0))
                                    }
                                    .frame(width: getRelativeWidth(336.0),
                                           height: getRelativeHeight(247.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(279.0))
                                    .padding(.trailing, getRelativeWidth(39.0))
                                    HStack {
                                        Text(StringConstants.kLblFri15th8pm)
                                            .font(FontScheme
                                                .kSFProDisplayLight(size: getRelativeHeight(17.0)))
                                            .fontWeight(.light)
                                            .foregroundColor(ColorConstants.Bluegray400)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(84.0),
                                                   height: getRelativeHeight(17.0),
                                                   alignment: .topLeading)
                                        Text(StringConstants.kLbl300m)
                                            .font(FontScheme
                                                .kSFProDisplayLight(size: getRelativeHeight(17.0)))
                                            .fontWeight(.light)
                                            .foregroundColor(ColorConstants.Bluegray400)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(43.0),
                                                   height: getRelativeHeight(17.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(39.0))
                                        Text(StringConstants.kLblBasketballGame)
                                            .font(FontScheme
                                                .kSFProDisplayMedium(size: getRelativeHeight(20.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(151.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .topLeading)
                                            .padding(.leading, getRelativeWidth(38.0))
                                            .padding(.trailing, getRelativeWidth(28.0))
                                    }
                                    .frame(width: getRelativeWidth(384.0),
                                           height: getRelativeHeight(500.0),
                                           alignment: .topTrailing)
                                    .padding(.bottom, getRelativeHeight(26.0))
                                    .padding(.leading, getRelativeWidth(13.0))
                                    VStack {
                                        HStack {
                                            VStack {
                                                Button(action: {}, label: {
                                                    HStack(spacing: 0) {
                                                        Text(StringConstants.kLblJoin)
                                                            .font(FontScheme
                                                                .kSFProDisplaySemibold(size: getRelativeHeight(20.0)))
                                                            .fontWeight(.semibold)
                                                            .padding(.horizontal,
                                                                     getRelativeWidth(16.0))
                                                            .padding(.vertical,
                                                                     getRelativeHeight(7.0))
                                                            .foregroundColor(ColorConstants.Gray300)
                                                            .minimumScaleFactor(0.5)
                                                            .multilineTextAlignment(.center)
                                                            .frame(width: getRelativeWidth(70.0),
                                                                   height: getRelativeHeight(35.0),
                                                                   alignment: .center)
                                                            .background(RoundedCorners(topLeft: 17.5,
                                                                                       topRight: 17.5,
                                                                                       bottomLeft: 17.5,
                                                                                       bottomRight: 17.5)
                                                                    .fill(ColorConstants.Red400))
                                                            .padding(.vertical,
                                                                     getRelativeHeight(22.0))
                                                            .padding(.horizontal,
                                                                     getRelativeWidth(11.0))
                                                    }
                                                })
                                                .frame(width: getRelativeWidth(70.0),
                                                       height: getRelativeHeight(35.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 17.5,
                                                                           topRight: 17.5,
                                                                           bottomLeft: 17.5,
                                                                           bottomRight: 17.5)
                                                        .fill(ColorConstants.Red400))
                                                .padding(.vertical, getRelativeHeight(22.0))
                                                .padding(.horizontal, getRelativeWidth(11.0))
                                            }
                                            .frame(width: getRelativeWidth(190.0),
                                                   height: getRelativeHeight(70.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(bottomLeft: 15.0,
                                                                       bottomRight: 15.0)
                                                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                .Bluegray100Cc,
                                                            ColorConstants
                                                                .Bluegray100Cc1]),
                                                        startPoint: .topLeading,
                                                        endPoint: .bottomTrailing)))
                                            ZStack(alignment: .bottomTrailing) {
                                                VStack {
                                                    Text(StringConstants.kLblJoin)
                                                        .font(FontScheme
                                                            .kSFProDisplaySemibold(size: getRelativeHeight(20.0)))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(ColorConstants.Gray300)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(39.0),
                                                               height: getRelativeHeight(20.0),
                                                               alignment: .topLeading)
                                                        .padding(.top, getRelativeHeight(7.0))
                                                        .padding(.bottom, getRelativeHeight(10.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(16.0))
                                                }
                                                .frame(width: getRelativeWidth(70.0),
                                                       height: getRelativeHeight(37.0),
                                                       alignment: .bottomTrailing)
                                                .background(RoundedCorners(topLeft: 18.0,
                                                                           topRight: 18.0,
                                                                           bottomLeft: 18.0,
                                                                           bottomRight: 18.0)
                                                        .fill(ColorConstants.Red400))
                                                .padding(.top, getRelativeHeight(24.95))
                                                .padding(.leading, getRelativeWidth(113.0))
                                                VStack {
                                                    Text(StringConstants.kLblJoin)
                                                        .font(FontScheme
                                                            .kSFProDisplaySemibold(size: getRelativeHeight(20.0)))
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(ColorConstants.Gray300)
                                                        .minimumScaleFactor(0.5)
                                                        .multilineTextAlignment(.leading)
                                                        .frame(width: getRelativeWidth(39.0),
                                                               height: getRelativeHeight(20.0),
                                                               alignment: .topLeading)
                                                        .padding(.vertical, getRelativeHeight(7.0))
                                                        .padding(.horizontal,
                                                                 getRelativeWidth(16.0))
                                                }
                                                .frame(width: getRelativeWidth(70.0),
                                                       height: getRelativeHeight(35.0),
                                                       alignment: .bottomTrailing)
                                                .background(RoundedCorners(topLeft: 17.5,
                                                                           topRight: 17.5,
                                                                           bottomLeft: 17.5,
                                                                           bottomRight: 17.5)
                                                        .fill(ColorConstants.Red400))
                                                .padding(.top, getRelativeHeight(27.93))
                                                .padding(.leading, getRelativeWidth(116.0))
                                            }
                                            .hideNavigationBar()
                                            .frame(width: getRelativeWidth(190.0),
                                                   height: getRelativeHeight(75.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(bottomLeft: 15.0,
                                                                       bottomRight: 15.0)
                                                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                                .Bluegray100Cc,
                                                            ColorConstants
                                                                .Bluegray100Cc1]),
                                                        startPoint: .topLeading,
                                                        endPoint: .bottomTrailing)))
                                            .padding(.leading, getRelativeWidth(17.0))
                                        }
                                        .frame(width: getRelativeWidth(375.0),
                                               height: getRelativeHeight(75.0), alignment: .leading)
                                        .padding(.trailing, getRelativeWidth(10.0))
                                        HStack {
                                            Text(StringConstants.kLblFri15th8pm)
                                                .font(FontScheme
                                                    .kSFProDisplayLight(size: getRelativeHeight(17.0)))
                                                .fontWeight(.light)
                                                .foregroundColor(ColorConstants.Bluegray400)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(84.0),
                                                       height: getRelativeHeight(17.0),
                                                       alignment: .topLeading)
                                            Spacer()
                                            Text(StringConstants.kLblSat16th8pm)
                                                .font(FontScheme
                                                    .kSFProDisplayLight(size: getRelativeHeight(17.0)))
                                                .fontWeight(.light)
                                                .foregroundColor(ColorConstants.Bluegray400)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.leading)
                                                .frame(width: getRelativeWidth(92.0),
                                                       height: getRelativeHeight(17.0),
                                                       alignment: .topLeading)
                                                .padding(.leading, getRelativeWidth(122.0))
                                        }
                                        .frame(width: getRelativeWidth(299.0),
                                               height: getRelativeHeight(17.0), alignment: .leading)
                                        .padding(.top, getRelativeHeight(37.0))
                                        .padding(.horizontal, getRelativeWidth(13.0))
                                    }
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(127.0),
                                           alignment: .bottomTrailing)
                                    .padding(.top, getRelativeHeight(399.0))
                                    VStack {
                                        Image("img_rectangle8_192X168")
                                            .resizable()
                                            .frame(width: getRelativeWidth(168.0),
                                                   height: getRelativeHeight(192.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 15.0,
                                                                       topRight: 15.0,
                                                                       bottomLeft: 15.0,
                                                                       bottomRight: 15.0))
                                            .padding(.leading, getRelativeWidth(10.0))
                                        Text(StringConstants.kMsgFootballFutsa)
                                            .font(FontScheme
                                                .kSFProDisplayMedium(size: getRelativeHeight(20.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(139.0),
                                                   height: getRelativeHeight(20.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(11.0))
                                            .padding(.trailing, getRelativeWidth(10.0))
                                        Text(StringConstants.kLbl300m)
                                            .font(FontScheme
                                                .kSFProDisplayLight(size: getRelativeHeight(17.0)))
                                            .fontWeight(.light)
                                            .foregroundColor(ColorConstants.Bluegray400)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(43.0),
                                                   height: getRelativeHeight(17.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(4.0))
                                            .padding(.horizontal, getRelativeWidth(124.0))
                                    }
                                    .frame(width: getRelativeWidth(362.0),
                                           height: getRelativeHeight(244.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(279.0))
                                    .padding(.leading, getRelativeWidth(13.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(375.0),
                                       height: getRelativeHeight(526.0), alignment: .leading)
                            }
                            .padding(.top, getRelativeHeight(27.0))
                        }
                        .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(593.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(27.0))
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(308.0), height: getRelativeHeight(59.0),
                                   alignment: .leading)
                            .padding(.horizontal, getRelativeWidth(26.0))
                    }
                    .frame(width: getRelativeWidth(375.0), height: getRelativeHeight(747.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(19.0))
                    .padding(.leading, getRelativeWidth(15.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: MapsFootballView(),
                                   tag: "MapsFootballView",
                                   selection: $eventsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HomePageView(),
                                   tag: "HomePageView",
                                   selection: $eventsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: EventCreatedView(),
                                   tag: "EventCreatedView",
                                   selection: $eventsViewModel.nextScreen,
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

struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}
