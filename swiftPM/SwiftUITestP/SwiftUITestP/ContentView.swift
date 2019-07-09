//
//  ContentView.swift
//  SwiftUITestP
//
//  Created by 王明海 on 2019/7/7.
//  Copyright © 2019 HeminWon. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("Hello World")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
