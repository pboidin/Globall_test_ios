import SwiftUI

struct CardCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image("img_kettlebell")
                .resizable()
                .frame(width: getRelativeWidth(11.0), height: getRelativeHeight(16.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.top, getRelativeHeight(17.0))
                .padding(.horizontal, getRelativeWidth(19.0))
            Text(StringConstants.kLblWorkout)
                .font(FontScheme.kMontserratRomanMedium(size: getRelativeHeight(15.0)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.Black900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(65.0), height: getRelativeHeight(15.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(53.0))
                .padding(.horizontal, getRelativeWidth(16.0))
            Text(StringConstants.kLbl2Hours)
                .font(FontScheme.kMontserratRomanMedium(size: getRelativeHeight(12.0)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.Gray50099)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(43.0), height: getRelativeHeight(12.0),
                       alignment: .leading)
                .padding(.vertical, getRelativeHeight(6.0))
                .padding(.horizontal, getRelativeWidth(16.0))
        }
        .frame(width: getRelativeWidth(106.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                   bottomRight: 20.0)
                .fill(ColorConstants.WhiteA700))
        .shadow(color: ColorConstants.Red50019, radius: 16, x: 0, y: 4)
        .hideNavigationBar()
    }
}

/* struct CardCell_Previews: PreviewProvider {

 static var previews: some View {
 			CardCell()
 }
 } */
