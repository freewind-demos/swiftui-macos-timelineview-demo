# SwiftUI macOS TimelineView

## 简介

演示 SwiftUI 中 TimelineView（时间线视图）的用法。

## 快速开始

```bash
cd swiftui-macos-timelineview-demo
xcodegen generate
open SwiftUITimelineViewDemo.xcodeproj
# Cmd+R 运行
```

## 概念讲解

### TimelineView

```swift
TimelineView(.everyMinute) { timeline in
    Text(timeline.date, style: .time)
}
```

## 完整讲解（中文）

### TimelineView 用途

- 按时间周期更新视图
- 显示时钟、倒计时等
- 使用 TimelineSchedule 控制更新频率