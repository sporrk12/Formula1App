//
//  FontsF1.swift
//  F1App
//
//  Created by Emmanuel  Granados on 06/11/24.
//
import SwiftUI

enum DSFontWeight: String {
    case regular, bold, wide
}

enum DSFontStyle: String {
    case h1, h2, h3, h4, h5
    case body1, body2
    case caption
    case overline
    case footnote
}

protocol DSFont {
    var regular: UIFont { get }
    var bold: UIFont { get }
    var wide: UIFont { get }
}

struct FontsF1 {
    
    private static let regular: UIFont = UIFont(name: "Formula1-Display-Regular", size: 14.0) ?? UIFont.systemFont(ofSize: 14.0)
    private static let bold: UIFont = UIFont(name: "Formula1-Display-Bold", size: 14.0) ?? UIFont.systemFont(ofSize: 14.0)
    private static let wide: UIFont = UIFont(name: "Formula1-Display-Wide", size: 14.0) ?? UIFont.systemFont(ofSize: 14.0)
    
    struct H1: DSFont {
        private static let fontSize = 34.0
        var regular: UIFont = UIFontMetrics(forTextStyle: .headline).scaledFont(for: FontsF1.regular.withSize(fontSize))
        var bold: UIFont = UIFontMetrics(forTextStyle: .headline).scaledFont(for: FontsF1.bold.withSize(fontSize))
        var wide: UIFont = UIFontMetrics(forTextStyle: .headline).scaledFont(for: FontsF1.wide.withSize(fontSize))
    }
    
    static let h1 = H1()
    
    struct H2: DSFont {
        private static let fontSize = 28.0
        var regular: UIFont = UIFontMetrics(forTextStyle: .subheadline).scaledFont(for: FontsF1.regular.withSize(fontSize))
        var bold: UIFont = UIFontMetrics(forTextStyle: .subheadline).scaledFont(for: FontsF1.bold.withSize(fontSize))
        var wide: UIFont = UIFontMetrics(forTextStyle: .subheadline).scaledFont(for: FontsF1.wide.withSize(fontSize))
    }
    
    static let h2 = H2()
    
    struct H3: DSFont {
        private static let fontSize = 24.0
        var regular: UIFont = UIFontMetrics(forTextStyle: .title1).scaledFont(for: FontsF1.regular.withSize(fontSize))
        var bold: UIFont = UIFontMetrics(forTextStyle: .title1).scaledFont(for: FontsF1.bold.withSize(fontSize))
        var wide: UIFont = UIFontMetrics(forTextStyle: .title1).scaledFont(for: FontsF1.wide.withSize(fontSize))
    }
    
    static let h3 = H3()
    
    struct H4: DSFont {
        private static let fontSize = 20.0
        var regular: UIFont = UIFontMetrics(forTextStyle: .title2).scaledFont(for: FontsF1.regular.withSize(fontSize))
        var bold: UIFont = UIFontMetrics(forTextStyle: .title2).scaledFont(for: FontsF1.bold.withSize(fontSize))
        var wide: UIFont = UIFontMetrics(forTextStyle: .title2).scaledFont(for: FontsF1.wide.withSize(fontSize))
    }
    
    static let h4 = H4()
    
    struct H5: DSFont {
        private static let fontSize = 16.0
        var regular: UIFont = UIFontMetrics(forTextStyle: .title3).scaledFont(for: FontsF1.regular.withSize(fontSize))
        var bold: UIFont = UIFontMetrics(forTextStyle: .title3).scaledFont(for: FontsF1.bold.withSize(fontSize))
        var wide: UIFont = UIFontMetrics(forTextStyle: .title3).scaledFont(for: FontsF1.wide.withSize(fontSize))
    }
    
    static let h5 = H5()
    
    struct Body1: DSFont {
        private static let fontSize = 14.0
        var regular: UIFont = UIFontMetrics(forTextStyle: .body).scaledFont(for: FontsF1.regular.withSize(fontSize))
        var bold: UIFont = UIFontMetrics(forTextStyle: .body).scaledFont(for: FontsF1.bold.withSize(fontSize))
        var wide: UIFont = UIFontMetrics(forTextStyle: .body).scaledFont(for: FontsF1.wide.withSize(fontSize))
    }
    
    static let body1 = Body1()
    
    struct Body2: DSFont {
        private static let fontSize = 12.0
        var regular: UIFont = UIFontMetrics(forTextStyle: .body).scaledFont(for: FontsF1.regular.withSize(fontSize))
        var bold: UIFont = UIFontMetrics(forTextStyle: .body).scaledFont(for: FontsF1.bold.withSize(fontSize))
        var wide: UIFont = UIFontMetrics(forTextStyle: .body).scaledFont(for: FontsF1.wide.withSize(fontSize))
    }
    
    static let body2 = Body2()
    
    struct Caption: DSFont {
        private static let fontSize = 10.0
        var regular: UIFont = UIFontMetrics(forTextStyle: .caption1).scaledFont(for: FontsF1.regular.withSize(fontSize))
        var bold: UIFont = UIFontMetrics(forTextStyle: .caption1).scaledFont(for: FontsF1.bold.withSize(fontSize))
        var wide: UIFont = UIFontMetrics(forTextStyle: .caption1).scaledFont(for: FontsF1.wide.withSize(fontSize))
    }
    
    static let caption = Caption()
    
    struct Overline: DSFont {
        private static let fontSize = 12.0
        var regular: UIFont = UIFontMetrics(forTextStyle: .headline).scaledFont(for: FontsF1.regular.withSize(fontSize))
        var bold: UIFont = UIFontMetrics(forTextStyle: .headline).scaledFont(for: FontsF1.bold.withSize(fontSize))
        var wide: UIFont = UIFontMetrics(forTextStyle: .headline).scaledFont(for: FontsF1.wide.withSize(fontSize))
    }
    
    static let overline = Overline()
    
    struct Footnote: DSFont {
        private static let fontSize = 8.0
        var regular: UIFont = UIFontMetrics(forTextStyle: .footnote).scaledFont(for: FontsF1.regular.withSize(fontSize))
        var bold: UIFont = UIFontMetrics(forTextStyle: .footnote).scaledFont(for: FontsF1.bold.withSize(fontSize))
        var wide: UIFont = UIFontMetrics(forTextStyle: .footnote).scaledFont(for: FontsF1.wide.withSize(fontSize))
    }
    
    static let footnote = Footnote()
    
    private static func get (_ style: DSFontStyle) -> DSFont {
        switch style {
        case .h1: return self.h1
        case .h2: return self.h2
        case .h3: return self.h3
        case .h4: return self.h4
        case .h5: return self.h5
        case .body1: return self.body1
        case .body2: return self.body2
        case .caption: return self.caption
        case .overline: return self.overline
        case .footnote: return self.footnote
        }
    }
    
    static func get(_ style: DSFontStyle, _ weight: DSFontWeight) -> UIFont {
        // Obtiene el dsFont correspondiente al estilo
        let dsFont = self.get(style)
        
        switch weight {
        case .regular: return dsFont.regular
        case .bold: return dsFont.bold
        case .wide: return dsFont.wide
            
        }
    }
    
    static func swiftUIFont(for style: DSFontStyle, weight: DSFontWeight) -> Font {
        let uiFont = get(style, weight)
        return Font(uiFont)
    }
    
}
