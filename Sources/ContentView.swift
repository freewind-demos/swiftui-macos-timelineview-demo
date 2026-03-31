import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("TimelineView 示例")
                .font(.headline)

            // 每秒更新一次
            TimelineView(.everyMinute) { timeline in
                Text(timeline.date, style: .time)
                    .font(.largeTitle)
            }

            // 每秒更新
            TimelineView(.everySecond) { timeline in
                Text(timeline.date, format: .dateTime.second())
                    .font(.title2)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
    }
}

extension TimelineSchedule {
    static var everySecond: some TimelineSchedule {
        PeriodicTimelineSchedule(every: .seconds(1))
    }
}