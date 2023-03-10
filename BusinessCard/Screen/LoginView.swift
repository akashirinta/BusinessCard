//
//  LoginView.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2023/02/20.
//

import SwiftUI

struct LoginView: View {

    @StateObject var viewModel = SignUpViewModel()

    var body: some View {
        NavigationView {
            VStack {
                Text("名刺作成アプリ(仮)")
                    .font(.system(size: 25))
                    .frame(width: 255, height: 23)
                    .padding(.bottom, 59)

                TextField("メールアドレス", text: $viewModel.email)
                    .authForms()
                    .padding(.bottom, 30)
                    .textInputAutocapitalization(.never)

                SecureField("パスワード(6字以上)", text: $viewModel.password)
                    .authForms()
                    .padding(.bottom, 60)
                    .textInputAutocapitalization(.never)

                Text(viewModel.errorMsg)
                    .foregroundColor(.red)

                HStack {
                    Group {
                        Image(systemName: "apple.logo")
                            .foregroundColor(.white)
                        Text("Appleでログイン")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)

                }
                .background(Color.black.cornerRadius(5))
                .padding(.bottom, 18)
                .frame(width: 200, height: 25)


                HStack {
                    Group {
                        Image("googlelogo")
                            .resizable()
                            .frame(width: 18, height: 18)
                        Text("Googleでログイン")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)

                }
                .background(Color.blue.cornerRadius(5))
                .padding(.bottom, 18)
                .frame(width: 210, height: 50)

                Button(action: {
                    viewModel.isValidated(isSignUp: false)
                    viewModel.signIn()
                }) {
                    Text("ログイン")
                }
                .padding(.bottom, 10)

                NavigationLink(destination: SignUp()) {
                    Text("新規登録へ")
                }

            }
        }

    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
