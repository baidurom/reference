.class Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$9;
.super Ljava/lang/Object;
.source "SmartKeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$phoneStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$9;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$9;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    iput p1, v0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->mPhoneState:I

    .line 1379
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager$9;->this$0:Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V
    invoke-static {v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;->access$3700(Lcom/baidu/internal/keyguard/slide/SmartKeyguardStatusViewManager;I)V

    .line 1380
    return-void
.end method
