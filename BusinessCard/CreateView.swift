//
//  CreateView.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2022/12/29.
//

import SwiftUI

struct CreateView: View {

    @ObservedObject private var viewModel = CreateViewModel()
    @State var showingImagePicker = false
    @State private var isChecked = false
    @State private var showPreview = false
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        showPreview.toggle()
                    }, label: {
                        Image(systemName: "eye")
                            .padding(.trailing, 30)
                            .foregroundColor(.black)
                    })
                    .sheet(isPresented: $showPreview) {
                        PreviewModal()
                            .presentationDetents([.medium])
                    }
                }

                VStack {
                    if let uiImage = viewModel.image {
                        Image(uiImage: uiImage)
                            .resizable()
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                    } else {
                        Circle()
                            .foregroundColor(.gray)
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                    }
                    Spacer().frame(height: 32)
                    Button(action: {
                        showingImagePicker = true
                    }) {
                        Text("フォトライブラリから選択")
                    }
                }
                .sheet(isPresented: $showingImagePicker) {
                    ImagePicker(sourceType: .photoLibrary, selectedImage: $viewModel.image)
                }
                Spacer()
                    .frame(height: 75)


                Group {
                    // 必須項目
                    HStack(spacing: 10) {
                        Text("名前")
                        Text("※")
                            .foregroundColor(.red)
                    }
                    .frame(width: 327, alignment: .leading)

                    VStack {
                        TextField("", text: $viewModel.name)
                            .frame(width: 327, alignment: .leading)
                            .padding(.top, 10)
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    HStack(spacing: 10) {
                        Text("ふりがな")
                        Text("※")
                            .foregroundColor(.red)
                    }
                    .frame(width: 327, alignment: .leading)

                    VStack {
                        TextField("", text: $viewModel.furigana)
                            .frame(width: 327, alignment: .leading)
                            .padding(.top, 10)
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    HStack(spacing: 10) {
                        Text("学校/会社名")
                        Text("※")
                            .foregroundColor(.red)
                    }
                    .frame(width: 327, alignment: .leading)

                    VStack {
                        TextField("", text: $viewModel.organizationName)
                            .frame(width: 327, alignment: .leading)
                            .padding(.top, 10)
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)
                }

                Group {
                    // 任意項目
                    Text("メールアドレス")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $viewModel.mailaddress)
                            .frame(width: 327, alignment: .leading)
                            .padding(.top, 10)
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    Text("電話番号")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $viewModel.phoneNumber)
                            .frame(width: 327, alignment: .leading)
                            .padding(.top, 10)
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    Text("住所")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $viewModel.address)
                            .frame(width: 327, alignment: .leading)
                            .padding(.top, 10)
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    Text("Twitter")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $viewModel.twitter)
                            .frame(width: 327, alignment: .leading)
                            .padding(.top, 10)
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)

                    Text("Instagram")
                        .frame(width: 327, alignment: .leading)
                        .padding(.horizontal, 32)
                    VStack {
                        TextField("", text: $viewModel.Instagram)
                            .frame(width: 327, alignment: .leading)
                            .padding(.top, 10)
                        Divider()
                            .frame(width: 327)
                    }
                    .padding(.bottom, 45)
                }

                Button(action: {
                    if viewModel.isvalidatedButton() {
                        dismiss()
                    }

                }, label: {
                    Text("確認")
                        .frame(width: 291, height: 46, alignment: .center)
                        .background(viewModel.isvalidatedButton()
                                    ? Color(UIColor(red: 0.075, green: 0.775, blue: 0.996, alpha: 1).cgColor)
                                    : Color(UIColor(red: 0.075, green: 0.775, blue: 0.996, alpha: 0.5).cgColor)
                                    )
                        .foregroundColor(.white)
                        .cornerRadius(50.0)

                })

            }
        }

    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
