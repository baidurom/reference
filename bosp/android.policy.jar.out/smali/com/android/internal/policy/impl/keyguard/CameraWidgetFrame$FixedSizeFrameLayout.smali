.class final Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CameraWidgetFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FixedSizeFrameLayout"
.end annotation


# instance fields
.field height:I

.field width:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 127
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v2, 0x4000

    .line 131
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->width:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->height:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->measureChildren(II)V

    .line 134
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->width:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setMeasuredDimension(II)V

    .line 135
    return-void
.end method
