import SwiftUI

// MARK: - CustomCorners

struct CustomCorners: Shape {
    
    // MARK: - Internal Properties

    var corners: UIRectCorner
    var radius: CGFloat
    
    // MARK: - Internal Methods
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}
