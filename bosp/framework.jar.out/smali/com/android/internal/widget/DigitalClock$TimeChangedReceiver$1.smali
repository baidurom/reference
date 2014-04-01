.class Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "DigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/android/internal/widget/DigitalClock;

.field final synthetic val$localeChanged:Z

.field final synthetic val$timezoneChanged:Z


# direct methods
.method constructor <init>(Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;ZLcom/android/internal/widget/DigitalClock;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->this$0:Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;

    iput-boolean p2, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/DigitalClock;

    iput-boolean p4, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->val$localeChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 92
    iget-boolean v1, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/DigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    #setter for: Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1, v2}, Lcom/android/internal/widget/DigitalClock;->access$002(Lcom/android/internal/widget/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 95
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->val$localeChanged:Z

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/DigitalClock;

    #calls: Lcom/android/internal/widget/DigitalClock;->getAmPm()Lcom/android/internal/widget/DigitalClock$AmPm;
    invoke-static {v1}, Lcom/android/internal/widget/DigitalClock;->access$100(Lcom/android/internal/widget/DigitalClock;)Lcom/android/internal/widget/DigitalClock$AmPm;

    move-result-object v0

    .line 97
    .local v0, ampm:Lcom/android/internal/widget/DigitalClock$AmPm;
    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Lcom/android/internal/widget/DigitalClock$AmPm;->reloadStringResource()V

    .line 101
    .end local v0           #ampm:Lcom/android/internal/widget/DigitalClock$AmPm;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/internal/widget/DigitalClock;

    #calls: Lcom/android/internal/widget/DigitalClock;->updateTime()V
    invoke-static {v1}, Lcom/android/internal/widget/DigitalClock;->access$200(Lcom/android/internal/widget/DigitalClock;)V

    .line 102
    return-void
.end method
