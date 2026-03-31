import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("TimelineView 示例")
                .font(.headline)

            TimelineView(PeriodicTimelineSchedule(from: Date(), by: 60.0)) { context in
                Text(context.date, style: .time)
                    .font(.largeTitle)
            }

            TimelineView(PeriodicTimelineSchedule(from: Date(), by: 1.0)) { context in
                Text(context.date, format: .dateTime.second())
                    .font(.title2)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
    }
}
