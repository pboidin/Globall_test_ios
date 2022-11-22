import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kSFProDisplayMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplayMedium, size: size)
    }

    static func kSFProDisplayHeavy(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplayHeavy, size: size)
    }

    static func kSFProDisplayHeavyItalic(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplayHeavyItalic, size: size)
    }

    static func kSFProDisplayBlack(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplayBlack, size: size)
    }

    static func kSFProDisplaySemibold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplaySemibold, size: size)
    }

    static func kSFProDisplayLight(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProDisplayLight, size: size)
    }

    static func kPoppinsMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsMedium, size: size)
    }

    static func kPoppinsSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsSemiBold, size: size)
    }

    static func kPoppinsBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsBold, size: size)
    }

    static func kPoppinsRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsRegular, size: size)
    }

    static func kPoppinsLight(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsLight, size: size)
    }

    static func kInterRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterRegular, size: size)
    }

    static func kInterSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterSemiBold, size: size)
    }

    static func kInterBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterBold, size: size)
    }

    static func kRobotoRomanRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoRomanRegular, size: size)
    }

    static func kRobotoRomanMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRobotoRomanMedium, size: size)
    }

    static func kMontserratRomanRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratRomanRegular, size: size)
    }

    static func kMontserratSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratSemiBold, size: size)
    }

    static func kMontserratRomanMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratRomanMedium, size: size)
    }

    static func kMontagaRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontagaRegular, size: size)
    }

    static func kLatoBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kLatoBold, size: size)
    }

    static func kAntonioBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kAntonioBold, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kSFProDisplayMedium":
            result = self.kSFProDisplayMedium(size: size)
        case "kSFProDisplayHeavy":
            result = self.kSFProDisplayHeavy(size: size)
        case "kSFProDisplayHeavyItalic":
            result = self.kSFProDisplayHeavyItalic(size: size)
        case "kSFProDisplayBlack":
            result = self.kSFProDisplayBlack(size: size)
        case "kSFProDisplaySemibold":
            result = self.kSFProDisplaySemibold(size: size)
        case "kSFProDisplayLight":
            result = self.kSFProDisplayLight(size: size)
        case "kPoppinsMedium":
            result = self.kPoppinsMedium(size: size)
        case "kPoppinsSemiBold":
            result = self.kPoppinsSemiBold(size: size)
        case "kPoppinsBold":
            result = self.kPoppinsBold(size: size)
        case "kPoppinsRegular":
            result = self.kPoppinsRegular(size: size)
        case "kPoppinsLight":
            result = self.kPoppinsLight(size: size)
        case "kInterRegular":
            result = self.kInterRegular(size: size)
        case "kInterSemiBold":
            result = self.kInterSemiBold(size: size)
        case "kInterBold":
            result = self.kInterBold(size: size)
        case "kRobotoRomanRegular":
            result = self.kRobotoRomanRegular(size: size)
        case "kRobotoRomanMedium":
            result = self.kRobotoRomanMedium(size: size)
        case "kMontserratRomanRegular":
            result = self.kMontserratRomanRegular(size: size)
        case "kMontserratSemiBold":
            result = self.kMontserratSemiBold(size: size)
        case "kMontserratRomanMedium":
            result = self.kMontserratRomanMedium(size: size)
        case "kMontagaRegular":
            result = self.kMontagaRegular(size: size)
        case "kLatoBold":
            result = self.kLatoBold(size: size)
        case "kAntonioBold":
            result = self.kAntonioBold(size: size)
        default:
            result = self.kSFProDisplayMedium(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplayMedium: String = "SFProDisplay-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplayHeavy: String = "SFProDisplay-Heavy"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplayHeavyItalic: String = "SFProDisplay-HeavyItalic"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplayBlack: String = "SFProDisplay-Black"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplaySemibold: String = "SFProDisplay-Semibold"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProDisplayLight: String = "SFProDisplay-Light"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsMedium: String = "Poppins-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsSemiBold: String = "Poppins-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsBold: String = "Poppins-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsRegular: String = "Poppins-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsLight: String = "Poppins-Light"
        /**
         * Please Add this fonts Manually
         */
        static let kInterRegular: String = "InterRegular"
        /**
         * Please Add this fonts Manually
         */
        static let kInterSemiBold: String = "Inter-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kInterBold: String = "Inter-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoRomanRegular: String = "RobotoRoman-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kRobotoRomanMedium: String = "RobotoRoman-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratRomanRegular: String = "MontserratRoman-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratSemiBold: String = "MontserratSemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratRomanMedium: String = "MontserratRoman-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kMontagaRegular: String = "Montaga-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kLatoBold: String = "Lato-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kAntonioBold: String = "Antonio-Bold"
    }
}
