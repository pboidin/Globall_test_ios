import SwiftUI

struct SignUpOneView: View {
    @StateObject var signUpOneViewModel = SignUpOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .center) {
                    Image("img_whitebackgroun_6")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(811.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    VStack {
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
                                Text(StringConstants.kMsgFillYourProfi)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Red400)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(171.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(29.0))
                            }
                            .frame(width: getRelativeWidth(216.0), height: getRelativeHeight(26.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(216.0), height: getRelativeHeight(26.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(6.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                        Image("img_addphotoprofi")
                            .resizable()
                            .frame(width: getRelativeWidth(150.0), height: getRelativeHeight(137.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(70.0))
                            .padding(.horizontal, getRelativeWidth(93.0))
                        VStack {
                            Text(StringConstants.kLblGender)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(17.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Bluegray400)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(58.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(27.0))
                                .padding(.bottom, getRelativeHeight(25.0))
                                .padding(.leading, getRelativeWidth(5.0))
                                .padding(.trailing, getRelativeWidth(271.0))
                        }
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(70.0),
                               alignment: .leading)
                        .overlay(RoundedCorners().stroke(ColorConstants.Gray400, lineWidth: 1))
                        .background(RoundedCorners().fill(ColorConstants.Gray100))
                        Text(StringConstants.kLblFullName)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(17.0)))
                            .fontWeight(.regular)
                            .padding(.leading, getRelativeWidth(5.0))
                            .padding(.bottom, getRelativeHeight(25.0))
                            .padding(.top, getRelativeHeight(27.0))
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(70.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners().stroke(ColorConstants.Gray400, lineWidth: 1))
                            .background(ColorConstants.Gray100)
                        Text(StringConstants.kLblNickname)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(17.0)))
                            .fontWeight(.regular)
                            .padding(.leading, getRelativeWidth(5.0))
                            .padding(.bottom, getRelativeHeight(25.0))
                            .padding(.top, getRelativeHeight(27.0))
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(70.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners().stroke(ColorConstants.Gray400, lineWidth: 1))
                            .background(ColorConstants.Gray100)
                        Text(StringConstants.kLblBirthday)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(17.0)))
                            .fontWeight(.regular)
                            .padding(.leading, getRelativeWidth(5.0))
                            .padding(.vertical, getRelativeHeight(29.0))
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(70.0),
                                   alignment: .topLeading)
                            .overlay(RoundedCorners().stroke(ColorConstants.Gray400, lineWidth: 1))
                            .background(ColorConstants.Gray100)
                        Text(StringConstants.kLblEmail2)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(17.0)))
                            .fontWeight(.regular)
                            .padding(.leading, getRelativeWidth(5.0))
                            .padding(.vertical, getRelativeHeight(27.0))
                            .foregroundColor(ColorConstants.Bluegray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(54.0),
                                   alignment: .topLeading)
                            .overlay(RoundedCorners().stroke(ColorConstants.Gray400, lineWidth: 1))
                            .background(ColorConstants.Gray100)
                        Button(action: {
                            signUpOneViewModel.nextScreen = "SignUpTwoView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblNext)
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
                                    .padding(.horizontal, getRelativeWidth(3.0))
                            }
                        })
                        .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(58.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.Red400))
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(47.0))
                        .padding(.horizontal, getRelativeWidth(3.0))
                    }
                    .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(673.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(27.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SignUpTwoView(),
                                   tag: "SignUpTwoView",
                                   selection: $signUpOneViewModel.nextScreen,
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

struct SignUpOneView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpOneView()
    }
}
