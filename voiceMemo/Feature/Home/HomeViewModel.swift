//
//  HomeViewModel.swift
//  voiceMemo
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var selectedTab: Tab
    @Published var todosCount: Int
    @Published var memosCount: Int
    @Published var voiceRecordersCount: Int
    
    init(
        selectedTab: Tab = .voiceRecorder,
        todosCount: Int = 0,
        memosCount: Int = 0,
        voiceRecorderCount: Int = 0
    ) {
        self.selectedTab = selectedTab
        self.todosCount = todosCount
        self.memosCount = memosCount
        self.voiceRecordersCount = voiceRecorderCount
    }
}

extension HomeViewModel {
    // 3가지는 -> TodosCount~VoiceRecorderCount 갯수 변경
    func setTodosCount(_ count: Int) {
        todosCount = count
    }
    
    func setMemosCount(_ count: Int) {
        memosCount = count
    }
    
    func setVoiceRecordersCount(_ count: Int) {
        voiceRecordersCount = count
    }
    
    // Tab 변경 메서드
    func changeSelectedTab(_ tab: Tab) {
        selectedTab = tab
    }
}
