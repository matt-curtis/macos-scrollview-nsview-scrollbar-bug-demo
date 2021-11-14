# macOS SwiftUI `ScrollView` Scrollbar Bug Demo

If you create a `ScrollView` that contains an `NSView` that intersects the scroll view's scrollbars, the scrollbars (or "scrollers") in that scroll view can no longer be clicked and dragged in those areas of intersection; clicks go directly to whatever the `NSView` inside the scroll view is.

This bug appears both with custom `NSViewRepresentable`-conformances and built-in SwiftUI views that wrap `NSView`s, like `Button` (which wraps `NSButton`.)

The two-finger touchpad scroll gesture works fine — it's clicking and dragging scrollbars that does not. The "Show scroll bars" preference must also set so that macOS only shows scrollbars when you're actively scrolling (i.e. via two-finger gesture). In other words, having that preference set to "Always" will prevent you from seeing this bug.
