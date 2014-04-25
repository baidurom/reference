.class Lcom/baidu/internal/keyguard/water/WaterLockScreen$4;
.super Landroid/database/ContentObserver;
.source "WaterLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/water/WaterLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/water/WaterLockScreen;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/water/WaterLockScreen;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$4;->this$0:Lcom/baidu/internal/keyguard/water/WaterLockScreen;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$4;->this$0:Lcom/baidu/internal/keyguard/water/WaterLockScreen;

    #calls: Lcom/baidu/internal/keyguard/water/WaterLockScreen;->updateAlarmInfo()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->access$100(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)V

    .line 160
    return-void
.end method
