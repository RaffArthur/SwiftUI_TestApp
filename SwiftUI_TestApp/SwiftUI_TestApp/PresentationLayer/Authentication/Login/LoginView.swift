//
//  LoginView.swift
//  SwiftUI_TestApp
//
//  Created by Arthur Raff on 02.10.2022.
//

import SwiftUI
import Combine

struct LoginView: View {
    @State private var userEmail: String = ""
    @State private var userPassword: String = ""
    @State private var showUserLoginAlert: Bool = false
        
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 0) {
                Image("vk_logo")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding(.bottom, 120)
                
                Text("Welcome back!")
                    .font(.system(size: 28,
                                  weight: .semibold,
                                  design: .default))
                    .padding(.bottom, 32)
                
                Group {
                    TextField(
                        "Email or phone",
                        text: $userEmail
                    )
                    .frame(height: 50)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
                    .padding(.leading)
                    .font(.system(size: 16,
                                  weight: .medium,
                                  design: .default))
                    .background(Color(uiColor: UIColor.systemGray6))
                    .cornerRadius(16, corners: [.topLeft, .topRight])
                    .padding(.bottom, 0)
                    
                    Divider()
                    
                    SecureField(
                        "Password",
                        text: $userPassword
                    )
                    .frame(height: 50)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
                    .padding(.leading)
                    .font(.system(size: 16,
                                  weight: .medium,
                                  design: .default))
                    .background(Color(uiColor: UIColor.systemGray6))
                    .cornerRadius(16, corners: [.bottomLeft, .bottomRight])
                    .padding(.bottom, 16)
                }
                
                Button("Login") { showUserLoginAlert = true }
                    .padding([.leading, .trailing])
                    .frame(width: 160, height: 40)
                    .font(.system(size: 18,
                                  weight: .heavy,
                                  design: .default))
                    .foregroundStyle(Color.white)
                    .background(Color.accentColor)
                    .clipShape(Capsule())
                
                    .alert("You're wellcum! 🥳", isPresented: $showUserLoginAlert) {
                        Button("MMM! Noice!", role: .cancel) { }
                    }
            }
        }
        .padding([.leading, .trailing, .top, .bottom])
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
