.class Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapDetector"
.end annotation


# instance fields
.field private mDownEvent:Landroid/view/MotionEvent;

.field private mFirstTapEvent:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 0
    .parameter

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1154
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1286
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1288
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 1291
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1292
    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    .line 1294
    :cond_1
    return-void
.end method

.method public firstTapDetected()Z
    .locals 4

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v2}, Lcom/android/server/accessibility/TouchExplorer;->access$700(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;I)V
    .locals 28
    .parameter "secondTapUp"
    .parameter "policyFlags"

    .prologue
    .line 1213
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$900(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 1219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$1000(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    .line 1220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$1100(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    .line 1222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$1200(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$1200(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 1225
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 1232
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v26

    .line 1233
    .local v26, pointerId:I
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v27

    .line 1235
    .local v27, pointerIndex:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$1400(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v24

    .line 1237
    .local v24, lastExploreEvent:Landroid/view/MotionEvent;
    if-nez v24, :cond_5

    .line 1240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$1500(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Rect;

    move-result-object v23

    .line 1241
    .local v23, focusBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$1600(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusBoundsInActiveWindow(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1242
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    .line 1243
    .local v20, clickLocationX:I
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->centerY()I

    move-result v21

    .line 1270
    .end local v23           #focusBounds:Landroid/graphics/Rect;
    .local v21, clickLocationY:I
    :cond_4
    :goto_1
    const/4 v3, 0x1

    new-array v9, v3, [Landroid/view/MotionEvent$PointerProperties;

    .line 1271
    .local v9, properties:[Landroid/view/MotionEvent$PointerProperties;
    const/4 v3, 0x0

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v9, v3

    .line 1272
    const/4 v3, 0x0

    aget-object v3, v9, v3

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1273
    const/4 v3, 0x1

    new-array v10, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 1274
    .local v10, coords:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v3, 0x0

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v10, v3

    .line 1275
    const/4 v3, 0x0

    aget-object v3, v10, v3

    move/from16 v0, v20

    int-to-float v4, v0

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1276
    const/4 v3, 0x0

    aget-object v3, v10, v3

    move/from16 v0, v21

    int-to-float v4, v0

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1277
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    const/high16 v14, 0x3f80

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v18

    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v22

    .line 1281
    .local v22, event:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    move-object/from16 v0, v22

    move/from16 v1, p2

    #calls: Lcom/android/server/accessibility/TouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;I)V
    invoke-static {v3, v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->access$1800(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V

    .line 1282
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 1251
    .end local v9           #properties:[Landroid/view/MotionEvent$PointerProperties;
    .end local v10           #coords:[Landroid/view/MotionEvent$PointerCoords;
    .end local v20           #clickLocationX:I
    .end local v21           #clickLocationY:I
    .end local v22           #event:Landroid/view/MotionEvent;
    :cond_5
    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v25

    .line 1252
    .local v25, lastExplorePointerIndex:I
    invoke-virtual/range {v24 .. v25}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v20, v0

    .line 1253
    .restart local v20       #clickLocationX:I
    invoke-virtual/range {v24 .. v25}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v21, v0

    .line 1254
    .restart local v21       #clickLocationY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$1500(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Rect;

    move-result-object v19

    .line 1255
    .local v19, activeWindowBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$1700(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$1600(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 1256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$1600(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowBounds(Landroid/graphics/Rect;)Z

    .line 1257
    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$1500(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Rect;

    move-result-object v23

    .line 1259
    .restart local v23       #focusBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$1600(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusBoundsInActiveWindow(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1260
    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1261
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->centerX()I

    move-result v20

    .line 1262
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->centerY()I

    move-result v21

    goto/16 :goto_1
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 6
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const/4 v5, 0x0

    .line 1159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1160
    .local v1, actionIndex:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1161
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1209
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1164
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1166
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->clear()V

    .line 1168
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 1172
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    .line 1175
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-static {v2, p1}, Lcom/android/server/accessibility/GestureUtils;->isSamePointerContext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1176
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->clear()V

    goto :goto_0

    .line 1179
    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$500(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mTouchSlop:I
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$600(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v4

    invoke-static {v2, p1, v3, v4, v1}, Lcom/android/server/accessibility/GestureUtils;->isTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1181
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$700(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1183
    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    .line 1184
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1185
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 1188
    :cond_4
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I
    invoke-static {v3}, Lcom/android/server/accessibility/TouchExplorer;->access$700(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    #getter for: Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I
    invoke-static {v4}, Lcom/android/server/accessibility/TouchExplorer;->access$800(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v4

    invoke-static {v2, p1, v3, v4, v1}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;III)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1190
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->onDoubleTap(Landroid/view/MotionEvent;I)V

    .line 1191
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1192
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    .line 1193
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1194
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_0

    .line 1197
    :cond_5
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1198
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    .line 1205
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1206
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mDownEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 1200
    :cond_7
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_6

    .line 1201
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1202
    iput-object v5, p0, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->mFirstTapEvent:Landroid/view/MotionEvent;

    goto :goto_1

    .line 1161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
