//
//  BottomTextView.swift
//  CodeHistory
//
//  Created by Ben Stone on 3/4/21.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }
    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Saiba mais...")
    }
}
