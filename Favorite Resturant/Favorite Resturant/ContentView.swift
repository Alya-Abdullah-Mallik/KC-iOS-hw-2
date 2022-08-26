//
//  ContentView.swift
//  Favorite Resturant
//
//  Created by Alya Mallik on 15/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var amount = ""
    @State var total = ""
    @State var stepperValue1: Int = 0
    @State var stepperValue2: Int = 0
    @State var stepperValue3: Int = 0
    @State var stepperValue4: Int = 0
    @State var stepperValue5: Int = 0
    @State var alert = ""
    @State var finalPrice = ""
    
    
    var body: some View {
        
        ZStack{
            Color.gray.opacity(0.7)
                .ignoresSafeArea()
            VStack{

       
                HStack{
            Text("McDonalds")
                .offset(x: -30, y: -100)
                .font(.largeTitle)
            
            Image("mcD")
                .resizable()
                .scaledToFit()
                .frame(width: 130, height: 80)
                .offset(x: 48, y: -88)
                }
                
            HStack{
                
                Stepper("Big Tasty: \(stepperValue1)", value: $stepperValue1)
                        .padding()
                    .font(.title2.bold())
                
                Text("1.25 KD")
                    .font(.title2.bold())
                    .padding()
            }
            
            
            HStack{
                Stepper("mcChicken: \(stepperValue2)", value: $stepperValue2)
                        .padding()
                    .font(.title2.bold())
                
                Text("1.50 KD")
                    .font(.title2.bold())
                    .padding()
            }
            
                
                HStack{
                    Stepper("Hashbrown: \(stepperValue3)", value: $stepperValue3)
                            .padding()
                        .font(.title2.bold())
                                        
                    Text("0.750 fls")
                        .font(.title2.bold())
                        .padding()
                
                }
                
                HStack{
                    
                    Stepper("mcMuffin: \(stepperValue4)", value: $stepperValue4)
                            .padding()
                        .font(.title2.bold())
                                        
                    Text("2.50 KD")
                        .font(.title2.bold())
                        .padding()
                    
                }
                
                HStack{
                    Stepper("mcFlurry: \(stepperValue5)", value: $stepperValue5)
                            .padding()
                        .font(.title2.bold())
                    
                    Text("2.50 KD")
                        .font(.title2.bold())
                        .padding()
                 
                }
                HStack{
                    
                Text("Enter your money")
                        .font(.title2)
                    Spacer()
                    TextField("  Amount", text:$total)
                        .frame(width: 100, height: 50)
                        .background(Color.yellow.opacity(0.6))
                        .clipShape(Capsule())

                }.padding()

                
                Text("Total")
                    .frame(width: 150, height: 50)
                    .background(.red.opacity(0.6))
                    .clipShape(Capsule())
                    .font(.title)
                    .onTapGesture {
                        if total > amount {
                            alert = "Transaction Failed"
                        }
                        
                        else if amount >= total {
                            alert = "Transaction Successful"
                        }
                        
                        }
                    
                
                Text(alert)
                    .font(.title.bold())
                
                
        }
            }
}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
