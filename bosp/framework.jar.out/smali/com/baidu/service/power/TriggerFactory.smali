.class public Lcom/baidu/service/power/TriggerFactory;
.super Ljava/lang/Object;
.source "TriggerFactory.java"


# static fields
.field static final TRIGGER_TYPE_ALARM:I = 0x3

.field static final TRIGGER_TYPE_BATTERY_LEVEL:I = 0x1

.field static final TRIGGER_TYPE_KEYGUARD:I = 0x2

.field static final TRIGGER_TYPE_SYS_BROADCAST:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createTrigger(I)Lcom/baidu/service/power/Trigger;
    .locals 1
    .parameter "type"

    .prologue
    .line 18
    packed-switch p0, :pswitch_data_0

    .line 95
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 20
    :pswitch_0
    new-instance v0, Lcom/baidu/service/power/TriggerFactory$1;

    invoke-direct {v0}, Lcom/baidu/service/power/TriggerFactory$1;-><init>()V

    goto :goto_0

    .line 29
    :pswitch_1
    new-instance v0, Lcom/baidu/service/power/TriggerFactory$2;

    invoke-direct {v0}, Lcom/baidu/service/power/TriggerFactory$2;-><init>()V

    goto :goto_0

    .line 83
    :pswitch_2
    new-instance v0, Lcom/baidu/service/power/KeyguardTrigger;

    invoke-direct {v0}, Lcom/baidu/service/power/KeyguardTrigger;-><init>()V

    goto :goto_0

    .line 85
    :pswitch_3
    new-instance v0, Lcom/baidu/service/power/TriggerFactory$3;

    invoke-direct {v0}, Lcom/baidu/service/power/TriggerFactory$3;-><init>()V

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
