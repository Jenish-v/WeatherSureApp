//
//  FeedbackView.swift

import SwiftUI

struct FeedbackView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var feedback = ""
    var body: some View {
        ZStack {
            Color(red: 0.902, green: 0.890, blue: 0.851)
                .ignoresSafeArea(.all)
            Image("weathersure")
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity)
                .frame(height: UIScreen.main.bounds.height / 3)
                .offset(y: -UIScreen.main.bounds.height / 2.6)
            
            VStack{
                HStack{
                    
                    Text("Feedback Form")
                        .foregroundColor(Color.brown)
                        .font(.system(size: 22, weight: .bold))
                        .offset(y: -UIScreen.main.bounds.height / 26)
                    Spacer()
                        
                }
                .padding(20)
                
                TextField("Name", text: $name)
                    .padding()
                    
                    .background(Color.white)
                    .cornerRadius(30)
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                    .offset(y: -UIScreen.main.bounds.height / 20)
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.white)
                
                    .cornerRadius(30)
                    .padding(.horizontal)
                    .offset(y: -UIScreen.main.bounds.height / 30)
                
                TextEditor(text: $feedback)
                    .padding()
                    .frame(height: 200)
                    .background(Color.white)
                
                    .cornerRadius(30)
                    .padding(.horizontal)
                
                Button("SUBMIT") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .padding()
                .background(Color.white)
                .foregroundColor(Color.brown)
                .font(.system(size: 20, weight: .bold))
                .cornerRadius(30)
                .padding(.horizontal)
                .offset(y: UIScreen.main.bounds.height / 15)
                    
            }
        }
    }
}

struct FeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackView()
    }
}
