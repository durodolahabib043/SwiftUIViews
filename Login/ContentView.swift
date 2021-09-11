//
//  ContentView.swift
//  Login
//
//  Created by Habib Durodola on 9/9/21.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        
        VStack{
            Image("bg").resizable().aspectRatio(contentMode: .fit).ignoresSafeArea()
            Text("Login").font(.largeTitle)
            Text("Why work hard if you can work smart")
            TextField(
                "User name",
                text: $username).padding().background(Color.gray)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .cornerRadius(5.0)
                .border(Color(UIColor.separator))
            SecureField(
                "Password",
                text: $password)
            {
//                handleLogin(username: username, password: password)
            }.padding()
            .border(Color(UIColor.separator)).cornerRadius(5.0)
            
            Button(action: {}) {
                HStack{
                    Spacer()
                    Text("Sign In").foregroundColor(Color.red)
                    Spacer()
                }.padding().background(Color.orange)
                
               
            }
            
            Button(action: {}) {
                Text("Forget password")
            }
            
            Spacer()
        }.padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
