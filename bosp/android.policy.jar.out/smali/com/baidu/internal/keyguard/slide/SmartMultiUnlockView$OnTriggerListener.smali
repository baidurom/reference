.class public interface abstract Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$OnTriggerListener;
.super Ljava/lang/Object;
.source "SmartMultiUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTriggerListener"
.end annotation


# static fields
.field public static final CENTER_HANDLE:I = 0x1

.field public static final NO_HANDLE:I


# virtual methods
.method public abstract onDragReleased()V
.end method

.method public abstract onDragging(I)V
.end method

.method public abstract onFiltDisableShortcut(I)Z
.end method

.method public abstract onGrabbed(Landroid/view/View;I)V
.end method

.method public abstract onGrabbedStateChange(Landroid/view/View;I)V
.end method

.method public abstract onReleased(Landroid/view/View;I)V
.end method

.method public abstract onTrigger(Landroid/view/View;I)V
.end method
