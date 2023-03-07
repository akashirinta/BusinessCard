//
//  ImagePicker.swift
//  BusinessCard
//
//  Created by 出口楓真 on 2022/12/29.
//

import Foundation
import UIKit
import SwiftUI
import FirebaseStorage

// コピペ
// URL: https://www.yururiwork.net/archives/1404
struct ImagePicker: UIViewControllerRepresentable {

    var sourceType: UIImagePickerController.SourceType = .photoLibrary

    @Binding var selectedImage: UIImage?
    @Environment(\.presentationMode) private var presentationMode

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {

        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator

        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {

    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }

    final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

        var parent: ImagePicker

        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

            if let image = info[.originalImage] as? UIImage {
                parent.selectedImage = image
            }

            let dateFormmater = DateFormatter()
            dateFormmater.dateFormat = "YYYYMMddHHmm"

            let uuid = "qppSOpqb6mc8VeNV6i54"
            let date = Date(timeIntervalSince1970: TimeInterval(Int(Date().timeIntervalSince1970)))
            let timestamp = dateFormmater.string(from: date)
            let fileName = "\(uuid)-\(timestamp)"
            let storageRef = Storage.storage().reference().child("images/\(uuid)/\(fileName).jpg")

            if let data = parent.selectedImage?.jpegData(compressionQuality: 0.5) {
                storageRef.putData(data, metadata: nil) { (metadata, error) in
                    if error != nil {
                        print(error!)
                        return
                    }
                    print("Upload Successful!")
                }
            }

            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}
