import SwiftUI

struct SignUpTwoView: View {
    @StateObject var signUpTwoViewModel = SignUpTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .center) {
                    Image("img_whitebackgroun_7")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(811.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
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
                                Text(StringConstants.kMsgSelectYourSpo)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Red400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(210.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(4.0))
                                    .padding(.leading, getRelativeWidth(29.0))
                            }
                            .frame(width: getRelativeWidth(255.0), height: getRelativeHeight(28.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(255.0), height: getRelativeHeight(28.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(8.0))
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(45.0),
                                           height: getRelativeWidth(45.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 22.5, topRight: 22.5,
                                                               bottomLeft: 22.5, bottomRight: 22.5)
                                            .fill(ColorConstants.Bluegray100))
                                    .padding(.top, getRelativeHeight(13.0))
                                    .padding(.bottom, getRelativeHeight(12.0))
                                    .padding(.leading, getRelativeWidth(19.0))
                                Text(StringConstants.kLblBasketball)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(18.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(86.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(26.0))
                                    .padding(.bottom, getRelativeHeight(25.0))
                                    .padding(.leading, getRelativeWidth(31.0))
                            }
                            .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(70.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners().stroke(ColorConstants.Gray400, lineWidth: 1))
                            .background(RoundedCorners().fill(ColorConstants.Gray100))
                            HStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(45.0),
                                           height: getRelativeWidth(45.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 22.5, topRight: 22.5,
                                                               bottomLeft: 22.5, bottomRight: 22.5)
                                            .fill(ColorConstants.Bluegray100))
                                    .padding(.top, getRelativeHeight(13.0))
                                    .padding(.bottom, getRelativeHeight(12.0))
                                    .padding(.leading, getRelativeWidth(19.0))
                                Text(StringConstants.kLblFootball)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(18.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(66.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(26.0))
                                    .padding(.bottom, getRelativeHeight(25.0))
                                    .padding(.leading, getRelativeWidth(31.0))
                            }
                            .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(70.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners().stroke(ColorConstants.Gray400, lineWidth: 1))
                            .background(RoundedCorners().fill(ColorConstants.Gray100))
                            HStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(45.0),
                                           height: getRelativeWidth(45.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 22.5, topRight: 22.5,
                                                               bottomLeft: 22.5, bottomRight: 22.5)
                                            .fill(ColorConstants.Bluegray100))
                                    .padding(.top, getRelativeHeight(13.0))
                                    .padding(.bottom, getRelativeHeight(12.0))
                                    .padding(.leading, getRelativeWidth(19.0))
                                Text(StringConstants.kLblRunning)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(18.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(68.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(28.0))
                                    .padding(.leading, getRelativeWidth(31.0))
                            }
                            .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(70.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners().stroke(ColorConstants.Gray400, lineWidth: 1))
                            .background(RoundedCorners().fill(ColorConstants.Gray100))
                            HStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(45.0),
                                           height: getRelativeWidth(45.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 22.5, topRight: 22.5,
                                                               bottomLeft: 22.5, bottomRight: 22.5)
                                            .fill(ColorConstants.Bluegray100))
                                    .padding(.top, getRelativeHeight(13.0))
                                    .padding(.bottom, getRelativeHeight(12.0))
                                    .padding(.leading, getRelativeWidth(19.0))
                                Text(StringConstants.kLblTennis)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(18.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(54.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(26.0))
                                    .padding(.bottom, getRelativeHeight(25.0))
                                    .padding(.leading, getRelativeWidth(31.0))
                            }
                            .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(70.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners().stroke(ColorConstants.Gray400, lineWidth: 1))
                            .background(RoundedCorners().fill(ColorConstants.Gray100))
                            HStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(45.0),
                                           height: getRelativeWidth(45.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 22.5, topRight: 22.5,
                                                               bottomLeft: 22.5, bottomRight: 22.5)
                                            .fill(ColorConstants.Bluegray100))
                                    .padding(.top, getRelativeHeight(13.0))
                                    .padding(.bottom, getRelativeHeight(12.0))
                                    .padding(.leading, getRelativeWidth(19.0))
                                Text(StringConstants.kLblBadminton)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(18.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(89.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(26.0))
                                    .padding(.bottom, getRelativeHeight(25.0))
                                    .padding(.leading, getRelativeWidth(31.0))
                            }
                            .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(70.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners().stroke(ColorConstants.Gray400, lineWidth: 1))
                            .background(RoundedCorners().fill(ColorConstants.Gray100))
                            HStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(45.0),
                                           height: getRelativeWidth(45.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 22.5, topRight: 22.5,
                                                               bottomLeft: 22.5, bottomRight: 22.5)
                                            .fill(ColorConstants.Bluegray100))
                                    .padding(.top, getRelativeHeight(13.0))
                                    .padding(.bottom, getRelativeHeight(12.0))
                                    .padding(.leading, getRelativeWidth(19.0))
                                Text(StringConstants.kLblPingPong)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(18.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(87.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(28.0))
                                    .padding(.leading, getRelativeWidth(31.0))
                            }
                            .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(70.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners().stroke(ColorConstants.Gray400, lineWidth: 1))
                            .background(RoundedCorners().fill(ColorConstants.Gray100))
                            HStack {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(45.0),
                                           height: getRelativeWidth(45.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 22.5, topRight: 22.5,
                                                               bottomLeft: 22.5, bottomRight: 22.5)
                                            .fill(ColorConstants.Bluegray100))
                                    .padding(.top, getRelativeHeight(13.0))
                                    .padding(.bottom, getRelativeHeight(12.0))
                                    .padding(.leading, getRelativeWidth(19.0))
                                Text(StringConstants.kLblVoleyball)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(18.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(74.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(28.0))
                                    .padding(.leading, getRelativeWidth(31.0))
                            }
                            .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(70.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners().stroke(ColorConstants.Gray400, lineWidth: 1))
                            .background(RoundedCorners().fill(ColorConstants.Gray100))
                            Divider()
                                .frame(width: getRelativeWidth(335.0),
                                       height: getRelativeHeight(1.0), alignment: .leading)
                                .overlay(RoundedCorners()
                                    .stroke(ColorConstants.Gray400, lineWidth: 0))
                                .background(RoundedCorners().fill(ColorConstants.Gray100))
                        }
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(490.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        .padding(.top, getRelativeHeight(49.0))
                        Button(action: {
                            signUpTwoViewModel.nextScreen = "HomePageView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblLetSGo)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(20.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(330.0),
                                           height: getRelativeHeight(58.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(ColorConstants.Red400))
                                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                                    .padding(.top, getRelativeHeight(47.0))
                                    .padding(.leading, getRelativeWidth(5.0))
                            }
                        })
                        .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(58.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.Red400))
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(47.0))
                        .padding(.leading, getRelativeWidth(5.0))
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(673.0),
                           alignment: .center)
                    .padding(.leading, getRelativeWidth(25.0))
                    .padding(.trailing, getRelativeWidth(30.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HomePageView(),
                                   tag: "HomePageView",
                                   selection: $signUpTwoViewModel.nextScreen,
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

struct SignUpTwoView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpTwoView()
    }
}
