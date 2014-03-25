.class Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$4;
.super Ljava/lang/Object;
.source "CameraWidgetFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$4;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$4;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mRecovering:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$900(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$4;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    #getter for: Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$1000(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$Callbacks;->onCameraLaunchedUnsuccessfully()V

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$4;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    #calls: Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->reset()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$1100(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    goto :goto_0
.end method
