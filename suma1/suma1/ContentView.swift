//
//  ContentView.swift
//  suma1
//
//  Created by Alumno ULSA on 29/03/23.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: suma1Document

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(suma1Document()))
    }
}
