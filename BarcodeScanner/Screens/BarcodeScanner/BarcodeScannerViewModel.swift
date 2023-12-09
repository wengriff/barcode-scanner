//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Adrian Somor on 08/09/2023.
//

import SwiftUI

final class BarcodeScanneriViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode // same as: return scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
