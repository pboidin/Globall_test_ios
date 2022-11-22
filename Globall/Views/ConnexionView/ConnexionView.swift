import SwiftUI

struct ConnexionView: View {
    @StateObject var connexionViewModel = ConnexionViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .center) {
                    Image("img_whitebackgroun_3")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(811.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    VStack(alignment: .leading, spacing: 0) {
                        Image("img_logoapp1")
                            .resizable()
                            .frame(width: getRelativeWidth(171.0), height: getRelativeWidth(171.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.horizontal, getRelativeWidth(80.0))
                        Group {
                            HStack {
                                TextField(StringConstants.kLblEMail,
                                          text: $connexionViewModel.mailinputText)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                                    .foregroundColor(ColorConstants.Bluegray400)
                                    .padding()
                                    .keyboardType(.emailAddress)
                            }
                            .onChange(of: connexionViewModel.mailinputText) { newValue in

                                connexionViewModel.isValidMailinputText = newValue
                                    .isValidEmail(isMandatory: true)
                            }
                            .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(58.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(ColorConstants.Gray100))
                            .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                            .padding(.top, getRelativeHeight(52.0))
                            if !connexionViewModel.isValidMailinputText {
                                Text("Please enter valid email.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                                    .frame(width: getRelativeWidth(330.0),
                                           height: getRelativeHeight(58.0), alignment: .leading)
                            }
                        }
                        Group {
                            HStack {
                                SecureField(StringConstants.kLblPassword,
                                            text: $connexionViewModel.passwordinputText)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                                    .foregroundColor(ColorConstants.Bluegray400)
                                    .padding()
                                    .keyboardType(.default)
                            }
                            .onChange(of: connexionViewModel.passwordinputText) { newValue in

                                connexionViewModel.isValidPasswordinputText = newValue
                                    .isValidPassword(isMandatory: true)
                            }
                            .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(58.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0)
                                    .fill(ColorConstants.Gray100))
                            .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                            .padding(.top, getRelativeHeight(20.0))
                            if !connexionViewModel.isValidPasswordinputText {
                                Text("Please enter valid password.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                                    .frame(width: getRelativeWidth(330.0),
                                           height: getRelativeHeight(58.0), alignment: .leading)
                            }
                        }
                        Button(action: {
                            connexionViewModel.nextScreen = "HomePageView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblLogIn)
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
                                    .padding(.top, getRelativeHeight(20.0))
                            }
                        })
                        .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(58.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.Red400))
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(20.0))
                        Text(StringConstants.kMsgNoAccountSi)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(160.0), height: getRelativeHeight(19.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(80.0))
                            .onTapGesture {
                                connexionViewModel.nextScreen = "SignUpOneView"
                            }
                        Button(action: {
                            connexionViewModel.facebookSignIn()
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kMsgContinueWithF)
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
                                            .fill(ColorConstants.Indigo500))
                                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                                    .padding(.top, getRelativeHeight(40.0))
                            }
                        })
                        .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(58.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.Indigo500))
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(40.0))
                        Button(action: {
                            connexionViewModel.googleSignIn()
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kMsgContinueWithG)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(20.0))
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(330.0),
                                           height: getRelativeHeight(58.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0)
                                            .fill(ColorConstants.WhiteA700))
                                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                                    .padding(.top, getRelativeHeight(20.0))
                            }
                        })
                        .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(58.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.WhiteA700))
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(20.0))
                    }
                    .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(652.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(79.0))
                    .padding(.horizontal, getRelativeWidth(30.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HomePageView(),
                                   tag: "HomePageView",
                                   selection: $connexionViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SignUpOneView(),
                                   tag: "SignUpOneView",
                                   selection: $connexionViewModel.nextScreen,
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

struct ConnexionView_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionView()
    }
}
