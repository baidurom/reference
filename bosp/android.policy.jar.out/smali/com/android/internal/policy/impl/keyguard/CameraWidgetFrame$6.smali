.class Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$6;
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
    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$6;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$6;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    #calls: Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onSecureCameraActivityStarted()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$1200(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V

    .line 110
    return-void
.end method
