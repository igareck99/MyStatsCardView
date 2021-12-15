import SwiftUI

class LoginPageModel: ObservableObject {
    
    // MARK: - Internal Properties
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showPassword: Bool = false
    
    @Published var registerUser: Bool = false
    @Published var re_Enter_Password: String = ""
    @Published var showReEnterPassword: Bool = false
    @AppStorage("log_Status") var log_Status: Bool = false
    
    // MARK: - Internal Methods
    
    func Login() {
        withAnimation{
            log_Status = true
        }
    }
    
    func Register() {
        // Do Action Here...
    }
    
    func ForgotPassword() {
        // Do Action Here...
    }
}

