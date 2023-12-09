//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Adrian Somor on 08/09/2023.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: Text("Invalid Device Input"), message: Text("Unable to capture the input."), dismissButton: .default(Text("OK")))
    
    static let invalidScannedType = AlertItem(title: Text("Invalid Scanned Type"), message: Text("The scanned value is not valid. This app scans EAN-8 and EAN-13."), dismissButton: .default(Text("OK")))
}
