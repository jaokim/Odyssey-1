list(APPEND WEBCORE_SRC
    page/animation/AnimationBase.cpp
    page/animation/AnimationController.cpp
    page/animation/CompositeAnimation.cpp
    page/animation/CSSPropertyAnimation.cpp
    page/animation/ImplicitAnimation.cpp
    page/animation/KeyframeAnimation.cpp
    page/scrolling/ScrollingConstraints.cpp
    page/scrolling/ScrollingCoordinator.cpp
    page/scrolling/ScrollingStateFixedNode.cpp 
    page/scrolling/ScrollingStateNode.cpp   
    page/scrolling/ScrollingStateScrollingNode.cpp   
    page/scrolling/ScrollingStateStickyNode.cpp    
    page/scrolling/ScrollingStateTree.cpp
    page/AutoscrollController.cpp
    page/BarProp.cpp
    page/CaptionUserPreferences.cpp
    page/Chrome.cpp
    page/Console.cpp
    page/ContentSecurityPolicy.cpp
    page/ContextMenuController.cpp
    page/Crypto.cpp
    page/DeviceController.cpp 
    page/DiagnosticLoggingKeys.cpp
    page/DOMSecurityPolicy.cpp
    page/DOMSelection.cpp
    page/DOMTimer.cpp
    page/DOMWindow.cpp
    page/DOMWindowExtension.cpp
    page/DOMWindowProperty.cpp
    page/DragController.cpp
    page/EventHandler.cpp
    page/EventSource.cpp
    page/FeatureObserver.cpp
    page/FocusController.cpp
    page/Frame.cpp
    page/FrameActionScheduler.cpp
    page/FrameDestructionObserver.cpp
    page/FrameTree.cpp
    page/FrameView.cpp
    page/GroupSettings.cpp
    page/GestureTapHighlighter.cpp
    page/History.cpp
    page/Location.cpp
    page/MouseEventWithHitTestResults.cpp
    page/Navigator.cpp
    page/NavigatorBase.cpp
    page/OriginAccessEntry.cpp
    page/Page.cpp
    page/PageActivityAssertionToken.cpp  
    page/PageConsole.cpp  
    page/PageGroup.cpp
    page/PageGroupLoadDeferrer.cpp
    page/PageSerializer.cpp
    page/PageThrottler.cpp 
    page/PageVisibilityState.cpp
    page/Performance.cpp
    page/PerformanceEntry.cpp
    page/PerformanceEntryList.cpp
    page/PerformanceNavigation.cpp
    page/PerformanceResourceTiming.cpp
    page/PerformanceTiming.cpp
    page/PointerLockController.cpp
    page/PrintContext.cpp
    page/Screen.cpp
    page/SecurityOrigin.cpp
    page/SecurityPolicy.cpp
    page/Settings.cpp
    page/SpatialNavigation.cpp
    page/SuspendableTimer.cpp
    page/UserContentURLPattern.cpp
    page/WindowFeatures.cpp
    page/WindowFocusAllowedIndicator.cpp
    page/WorkerNavigator.cpp
)
list(APPEND IDL_SRC
    page/BarProp.idl
    page/Console.idl
    page/Crypto.idl
    page/DOMSecurityPolicy.idl
    page/DOMSelection.idl
    page/DOMWindow.idl
    page/EventSource.idl
    page/History.idl
    page/Location.idl
    page/Navigator.idl
    page/Performance.idl
    page/PerformanceEntry.idl
    page/PerformanceEntryList.idl
    page/PerformanceNavigation.idl
    page/PerformanceResourceTiming.idl
    page/PerformanceTiming.idl
    page/Screen.idl
    page/SpeechInputEvent.idl
    page/SpeechInputResult.idl
    page/SpeechInputResultList.idl
    page/WebKitPoint.idl
    page/WindowBase64.idl
    page/WindowTimers.idl
    page/WorkerNavigator.idl
)
