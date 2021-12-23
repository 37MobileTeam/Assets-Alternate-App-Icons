//
//  ContentView.swift
//  AppIconDemo
//
//  Created by HTC on 2021/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.gray.edgesIgnoringSafeArea(.all)
            VStack{
                
                Text("Change App Icon")
                    .font(.title)
                
                VStack{
                    
                    Button(action: {
                        UIApplication.shared.setAlternateIconName(nil)
                    }){
                        Image("icon1")
                            .cornerRadius(20)
                    }
                    
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("37")
                    }){
                        Image("icon2")
                            .cornerRadius(20)
                    }
                    
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("Rainbow")
                    }){
                        
                        Image("icon3")
                            .cornerRadius(20)
                    }
                    
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("Apple")
                    }){
                        
                        Image("icon4")
                            .cornerRadius(20)
                    }
                    
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("Oversea")
                    }){
                        
                        Image("icon5")
                            .cornerRadius(20)
                    }
                    
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("Demo")
                    }){
                        
                        Image("icon6")
                            .cornerRadius(20)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
