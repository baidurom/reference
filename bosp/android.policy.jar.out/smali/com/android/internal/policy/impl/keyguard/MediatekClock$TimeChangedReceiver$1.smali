.class Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "MediatekClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/android/internal/policy/impl/keyguard/MediatekClock;

.field final synthetic val$timezoneChanged:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver;ZLcom/android/internal/policy/impl/keyguard/MediatekClock;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/policy/impl/keyguard/MediatekClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/policy/impl/keyguard/MediatekClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mCalendar:Ljava/util/Calendar;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/policy/impl/keyguard/MediatekClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->updateTime()V

    .line 67
    return-void
.end method
