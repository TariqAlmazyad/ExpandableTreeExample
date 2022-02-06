//
//  ContentView.swift
//  Shared
//
//  Created by Tariq Almazyad on 2/6/22.
import SwiftUI
struct ContentView: View {
    @State private var isExpanded: Bool = false
    var body: some View {
        NavigationView{
            List{
                Section {
                    ForEach(0 ..< 5) { item in
                        Section {
                            ForEach(0 ..< 5) { item in
                                HStack(spacing: 0){
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color(#colorLiteral(red: 0.9860782027, green: 0.397990942, blue: 0, alpha: 1)))
                                        .frame(width: 2, height: 60)
                                    VStack(spacing: 0){
                                        Circle()
                                            .fill(Color.white)
                                            .frame(width: 10, height: 10)
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(Color(#colorLiteral(red: 0.9860782027, green: 0.397990942, blue: 0, alpha: 1)))
                                            .frame(width: 2, height: .infinity)
                                    }.padding(.leading, 34)
                                    CurvedCircle()
                                        .stroke(Color(#colorLiteral(red: 0.9860782027,
                                                                    green: 0.397990942, blue: 0, alpha: 1)), lineWidth: 2)
                                        .frame(width: 12, height: 16)
                                        .padding(.leading, -5)
                                    Text("1234")
                                        .padding(.top, 12)
                                    Spacer()
                                }.padding(.leading, 34)
                            }
                        } header: {
                            HStack(spacing: 0){
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color(#colorLiteral(red: 0.9860782027, green: 0.397990942, blue: 0, alpha: 1)))
                                    .frame(width: 2, height: .infinity)
                                CurvedCircle()
                                    .stroke(Color(#colorLiteral(red: 0.9860782027, green: 0.397990942, blue: 0, alpha: 1)), lineWidth: 2)
                                    .frame(width: 18, height: 30)
                                Circle()
                                    .stroke(Color(#colorLiteral(red: 0.9860782027, green: 0.397990942, blue: 0, alpha: 1)), lineWidth: 2)
                                    .background(Color.white.clipShape(Circle()))
                                    .frame(width: 8, height: 8)
                                    .padding(.top, 30)
                                Text("hello world")
                                    .padding(.top, 30)
                                    .padding(.leading, 6)
                                Spacer()
                            }
                            .padding(.leading, 34)
                        }
                        .listRowBackground(Color.clear)
                        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))

                    }
                } header: {
                    VStack(spacing: -28){
                        HStack{
                            Text("People")
                            Spacer()
                        }
                        .padding(6)
                        .background(Color.blue.clipShape(RoundedRectangle(cornerRadius: 22)))
                        HStack{
                            Circle()
                                .fill(Color.white)
                                .frame(width: 16, height: 16)
                                .padding(2)
                                .background(Color(#colorLiteral(red: 0.9860782027, green: 0.397990942, blue: 0, alpha: 1)).clipShape(Circle()))
                                .padding(.leading, 16)
                            Spacer()
                        }.padding(.top, 22)
                    }
                        
                }
                .listRowInsets(.init(top: 12, leading: 9, bottom: 0, trailing: 0))
                .listRowSeparatorTint(.clear)
            }.listStyle(.sidebar)
            .navigationTitle("Expandable Sections")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        
    }
}
