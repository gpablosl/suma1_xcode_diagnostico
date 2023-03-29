//
//  suma1App.swift
//  suma1
//
//  Created by Alumno ULSA on 29/03/23.
//

import SwiftUI

@main
struct suma1App: App {
    var body: some Scene {
        DocumentGroup(newDocument: suma1Document()) { file in
            ContentView(document: file.$document)
        }
    }
}
