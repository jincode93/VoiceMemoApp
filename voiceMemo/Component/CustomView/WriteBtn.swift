//
//  WriteBtn.swift
//  voiceMemo
//
//

import SwiftUI

// MARK: - 1. ViewModifier 직접 사용
public struct WriteBtnViewModifier: ViewModifier {
    let action: () -> Void
    
    public init(action: @escaping () -> Void) {
        self.action = action
    }
    
    public func body(content: Content) -> some View {
        ZStack {
            content
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button(
                        action: action,
                        label: { Image("writeBtn")}
                    )
                }
            }
            .padding(.trailing, 20)
            .padding(.bottom, 50)
        }
    }
}

// MARK: - 2. ViewModifier View Extension으로 사용하기
extension View {
    public func writeBtn(perform action: @escaping () -> Void) -> some View {
        ZStack {
            self
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button(
                        action: action,
                        label: { Image("writeBtn")}
                    )
                }
            }
            .padding(.trailing, 20)
            .padding(.bottom, 50)
        }
    }
}

// MARK: - 3. 커스텀 컴포넌트 View 사용하기
public struct WriteBtnView<Content: View>: View {
    let content: Content
    let action: () -> Void
    
    public init(
        @ViewBuilder content: () -> Content,
        action: @escaping () -> Void
    ) {
        self.content = content()
        self.action = action
    }
    
    public var body: some View {
        ZStack {
            content
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button(
                        action: action,
                        label: { Image("writeBtn")}
                    )
                }
            }
            .padding(.trailing, 20)
            .padding(.bottom, 50)
        }
    }
}
