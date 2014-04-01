.class public Landroid/widget/GestureImageView;
.super Landroid/widget/ImageView;
.source "GestureImageView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final ACTION_SCROLL:Ljava/lang/String; = "com.weather.action.SCROLL"

.field private static final DIRECTION:Ljava/lang/String; = "Dircetion"

.field private static final DIRECTION_NEXT:Ljava/lang/String; = "direction_next"

.field private static final DIRECTION_PREVIOUS:Ljava/lang/String; = "direction_previous"

.field private static final TAG:Ljava/lang/String; = "GestureImageView"


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field private mAppWidgetId:I

.field private sendTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/GestureImageView;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/GestureImageView;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/GestureImageView;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/widget/GestureImageView;->gestureDetector:Landroid/view/GestureDetector;

    .line 87
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v5, 0x1

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/widget/GestureImageView;->sendTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 112
    :goto_0
    return v5

    .line 103
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.weather.action.SCROLL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    iget v2, p0, Landroid/widget/GestureImageView;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_1

    .line 106
    const-string v1, "Dircetion"

    const-string v2, "direction_next"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GestureImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/GestureImageView;->sendTime:J

    goto :goto_0

    .line 108
    :cond_1
    const-string v1, "Dircetion"

    const-string v2, "direction_previous"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 117
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v3, 0x1

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/widget/GestureImageView;->sendTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v3

    .line 125
    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 126
    .local v1, x:F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 127
    .local v2, y:F
    cmpl-float v4, v1, v2

    if-gtz v4, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/widget/GestureImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 131
    const/high16 v4, 0x40a0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_3

    const/high16 v4, 0x40e0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_3

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.weather.action.SCROLL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "appWidgetId"

    iget v5, p0, Landroid/widget/GestureImageView;->mAppWidgetId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const/4 v4, 0x0

    cmpg-float v4, p4, v4

    if-gez v4, :cond_2

    .line 135
    const-string v4, "Dircetion"

    const-string v5, "direction_next"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GestureImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/GestureImageView;->sendTime:J

    goto :goto_0

    .line 137
    :cond_2
    const-string v4, "Dircetion"

    const-string v5, "direction_previous"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 143
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 148
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/widget/GestureImageView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setWidgetId(I)V
    .locals 0
    .parameter "widgetId"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 81
    iput p1, p0, Landroid/widget/GestureImageView;->mAppWidgetId:I

    .line 82
    return-void
.end method
