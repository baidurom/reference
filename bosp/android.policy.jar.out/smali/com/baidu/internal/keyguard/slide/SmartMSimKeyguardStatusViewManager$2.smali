.class Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$2;
.super Ljava/lang/Object;
.source "SmartMSimKeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$2;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "simState"

    .prologue
    .line 298
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 1
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager$2;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;

    #calls: Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v0, p1, p2}, Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;->access$300(Lcom/baidu/internal/keyguard/slide/SmartMSimKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    .line 302
    return-void
.end method
