.class final Landroid/webkit/WebViewInputDispatcher$PreventTouchStream;
.super Ljava/lang/Object;
.source "WebViewInputDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewInputDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PreventTouchStream"
.end annotation


# instance fields
.field private mLastPreventDefault:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewInputDispatcher$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1320
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher$PreventTouchStream;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastPreventDefault()Z
    .locals 1

    .prologue
    .line 1324
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher$PreventTouchStream;->mLastPreventDefault:Z

    return v0
.end method

.method public update(Landroid/view/MotionEvent;Z)Z
    .locals 4
    .parameter "event"
    .parameter "preventDefault"

    .prologue
    const/4 v1, 0x0

    .line 1334
    if-nez p1, :cond_0

    .line 1335
    const-string v2, "WebViewInputDispatcher"

    const-string v3, "PreventTouchStream has null event."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1356
    :goto_0
    :pswitch_0
    return v0

    .line 1343
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher$PreventTouchStream;->mLastPreventDefault:Z

    .line 1344
    .local v0, prevent:Z
    iput-boolean p2, p0, Landroid/webkit/WebViewInputDispatcher$PreventTouchStream;->mLastPreventDefault:Z

    .line 1345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    move v0, p2

    .line 1356
    goto :goto_0

    .line 1353
    :pswitch_2
    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher$PreventTouchStream;->mLastPreventDefault:Z

    goto :goto_0

    .line 1345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
