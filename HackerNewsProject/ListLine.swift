//
//  ListLine.swift
//  HackerNewsProject
//
//  Created by Myrddin-Evans, Lysander (JD) on 13/12/2023.
//

import SwiftUI

struct ListLine: View {
    var story: String
    
    var body: some View {
        Button( action: {} ) {
            HStack {
                Text(story)
                    .foregroundColor(Color.black)
                Spacer()
                Image(systemName: "chevron.right")
            }
        }
    }
}

struct ListLine_Previews: PreviewProvider {
    static var previews: some View {
        ListLine(story: "Jamie")
    }
}
