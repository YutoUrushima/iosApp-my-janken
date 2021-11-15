//
//  ContentView.swift
//  MyJanken
//
//  Created by sd037 on 2021/11/15.
//

import SwiftUI

struct ContentView: View {
    
    // 変数設定
    @State var answerNumber = 0
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            if answerNumber == 0 {
                Text("これからじゃんけんをします")
                    .padding(.bottom)
            } else if answerNumber == 1 {
                // グー画像を指定
                Image("gu")
                // リサイズを指定
                    .resizable()
                // 画面内に収まるように、アス比を維持する指定
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                // じゃんけんの種類を指定
                Text("グー")
                    .padding(.bottom)
                
            } else if answerNumber == 2 {
                // チョキ画像を指定
                Image("choki")
                // リサイズを指定
                    .resizable()
                // 画面内に収まるように、アス比を維持する指定
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                // じゃんけんの種類を指定
                Text("チョキ")
                    .padding(.bottom)
                
            } else {
                // グー画像を指定
                Image("pa")
                // リサイズを指定
                    .resizable()
                // 画面内に収まるように、アス比を維持する指定
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                // じゃんけんの種類を指定
                Text("パー")
                    .padding(.bottom)
                
            }
            
            // [じゃんけんをする！]ボタン
            Button(action: {
                
                var newAnswerNumber = 0
                
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber
                
                answerNumber = newAnswerNumber
                
            }) {
                // Buttonに表示する文字を指定
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            } // [じゃんけんをする]ボタン ここまで
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
