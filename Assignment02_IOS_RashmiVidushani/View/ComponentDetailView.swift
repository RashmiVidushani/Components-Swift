//
//  ComponentDetailView.swift
//  Assignment02_IOS
//
//  Created by Rashmi Vidushani on 2025-02-16.
//

import SwiftUI
import SafariServices // For opening documentation links in Safari
struct ComponentDetailView: View {
    let component: Component
    
    // State variables for interactive UI elements (Property wrappers)
    @State private var textInput = ""
    @State private var isToggled = false
    @State private var sliderValue: Double = 5
    @State private var selectedDate = Date()
    @State private var selectedColor = Color.blue
    @State private var showAlert = false
    @State private var showSheet = false
    @State private var pickerDefaultSelection: String = "Option 1"
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                // Icon Display
                HStack {
                    Spacer()
                    Image(systemName: component.systemIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .padding()
                        .foregroundColor(.blue)
                    Spacer()
                }
                // Component Description or features
                Text(component.description)
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                
                Divider()
                
                // Example Section
                Text("Example of \(component.type)")
                    .font(.headline)
                    .padding(.horizontal)
                
                // Display Component Examples using switch case
                Group {
                    switch component.type {
                        //Section1: Text Input/Output
                    case .text:
                        Text("This is a Text View")
                            .font(.title3)
                            .foregroundColor(.blue)
                    case .label:
                        Label("Label", systemImage: "tag")
                    case .textField:
                        TextField("Enter text", text: $textInput)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    case .secureField:
                        SecureField("Enter password", text: $textInput)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    case .textArea:
                        TextEditor(text: $textInput)
                            .frame(height: 100)
                            .border(Color.gray, width: 1)
                            .padding()
                    case .image:
                        Image(systemName: "photo")
                            .resizable()
                            .frame(width: 300, height: 250)
                        
                        // Section 2: Controls
                    case .button:
                        Button("Tap Me") {
                            print("Button tapped")
                        }
                        .buttonStyle(.borderedProminent)
                        .padding()
                    case .menu:
                        Menu("Select an Option") {
                            Button("Option 1", action: {print("Option 1 selected") })
                            Button("Option 2", action: {print("Option 2 selected") })
                        }
                    case .link:
                        Link("Visit Apple", destination: URL(string: "https://apple.com")!)
                    case .slider:
                        Slider(value: $sliderValue, in: 0...100, step: 1)
                    case .stepper:
                        Stepper("Value (between 0 - 10): \(Int(sliderValue))", value: $sliderValue, in: 0...10)
                    case .toggle:
                        Toggle("Enable Feature", isOn: $isToggled)
                    case .picker:
                        Picker("Select an option :", selection: $pickerDefaultSelection) {
                            Text("Option 1").tag("Option 1")
                            Text("Option 2").tag("Option 2")
                        }
                    case .datePicker:
                        DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                            .datePickerStyle(.compact)
                    case .colorPicker:
                        ColorPicker("Choose Color", selection: $selectedColor)
                    case .progressView:
                        ProgressView("Loading...", value: sliderValue, total: 100)
                        
                        //Section 3: Container Views
                    case .hStack:
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(1...15, id: \.self) { num in
                                    Text("Item \(num)")
                                        .padding()
                                        .background(Color.gray.opacity(0.3))
                                        .cornerRadius(10)
                                }
                            }
                        }
                    case .vStack:
                        ScrollView{
                            VStack {
                                ForEach(1...15, id: \.self) { num in
                                    Text("Item \(num)")
                                        .padding()
                                        .background(Color.gray.opacity(0.3))
                                        .cornerRadius(10)
                                }
                            }
                        }
                    case .zStack:
                        ZStack {
                            Rectangle()
                                .fill(Color.gray)
                                .frame(width: 200, height: 200)
                            Rectangle()
                                .fill(Color.blue)
                                .frame(width: 350, height: 150)
                            Text("ZStack ")
                                .foregroundColor(.white)
                                .bold()
                        }
                    case .form:
                        NavigationView{
                            Form {
                                TextField("Name", text: $textInput)
                                Toggle("Enable Notifications", isOn: $isToggled)
                            }
                        }
                        .frame(width: 300, height: 150)
                    case .navigationView:
                        NavigationView {
                            Text("Navigation View content")
                                .navigationTitle("Navigation title")
                        }
                        .frame(width: 300, height: 300)
                    case .alert:
                        Button("Show Alert") {
                            showAlert = true
                        }
                        .alert("Alert Title", isPresented: $showAlert) {
                            Button("OK", role: .cancel) {}
                        }
                    case .sheet:
                        Button("Show Sheet") {
                            showSheet = true
                        }
                        .sheet(isPresented: $showSheet) {
                            VStack {
                                Text("This is a Sheet")
                                    .font(.title)
                                    .padding()
                                Button("Close") {
                                    showSheet = false
                                }
                                .buttonStyle(.borderedProminent)
                            }
                        }
                        // Section 4: List
                    case .plain:
                        NavigationView{
                            List {
                                ForEach(1...10, id: \.self) { num in
                                    Text("Item \(num)")
                                }
                            }
                            .listStyle(.plain)
                        }
                        .frame(width: 300, height: 300)
                    case .inset:
                        NavigationView{
                            List {
                                ForEach(1...10, id: \.self) { num in
                                    Text("Item \(num)")
                                }
                            }
                            .listStyle(.inset)
                        }
                        .frame(width: 300, height: 300)
                        
                    case .grouped:
                        NavigationView{
                            List {
                                Section(header: Text("Group 1")) {
                                    Text("Item A")
                                    Text("Item B")
                                }
                                Section(header: Text("Group 2")) {
                                    Text("Item C")
                                    Text("Item D")
                                }
                            }
                            .listStyle(.grouped)
                        }
                        .frame(width: 300, height: 300)
                        
                    case .insetGrouped:
                        NavigationView{
                            List {
                                Section(header: Text("Group 1")) {
                                    Text("Item A")
                                    Text("Item B")
                                }
                                Section(header: Text("Group 2")) {
                                    Text("Item C")
                                    Text("Item D")
                                }
                            }
                            .listStyle(.insetGrouped)
                        }
                        .frame(width: 300, height: 300)
                        
                    case .sidebar:
                        NavigationView{
                            List {
                                Section(header: Text("Main")) {
                                    Text("Home")
                                    Text("Profile")
                                }
                                Section(header: Text("Settings")) {
                                    Text("Privacy")
                                    Text("Notifications")
                                }
                            }
                            .listStyle(.sidebar)
                        }
                        .frame(width: 300, height: 300)
                    }}
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(15)
                        .shadow(radius: 3)
                }
                .padding()
            }
            .navigationTitle(component.name)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                // Tool bar Item to navigate to user component Documentation page
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        if let url = URL(string: component.documentationURL) {
                            let config = SFSafariViewController.Configuration()
                            config.entersReaderIfAvailable = true
                            let vc = SFSafariViewController(url: url, configuration: config)
                                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                                  let window = windowScene.windows.first(where: { $0.isKeyWindow }),
                               let topVC = window.rootViewController {
                                topVC.present(vc, animated: true)}
                        }
                    } label: {
                        Label("Documentation", systemImage: "doc.text")
                            .labelStyle(IconOnlyLabelStyle())
                            .foregroundColor(.blue)
                    }
                    .hoverEffect(.highlight)
                }
            }
        }
    }
