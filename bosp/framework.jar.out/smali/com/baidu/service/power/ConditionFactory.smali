.class public Lcom/baidu/service/power/ConditionFactory;
.super Ljava/lang/Object;
.source "ConditionFactory.java"


# static fields
.field static final CONDITION_TYPE_BATTERY_LOW:I = 0x0

.field static final CONDITION_TYPE_BATTERY_OK:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createCondition(I)Lcom/baidu/service/power/TriggerCondition;
    .locals 1
    .parameter "type"

    .prologue
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 30
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 15
    :pswitch_0
    new-instance v0, Lcom/baidu/service/power/ConditionFactory$1;

    invoke-direct {v0}, Lcom/baidu/service/power/ConditionFactory$1;-><init>()V

    goto :goto_0

    .line 22
    :pswitch_1
    new-instance v0, Lcom/baidu/service/power/ConditionFactory$2;

    invoke-direct {v0}, Lcom/baidu/service/power/ConditionFactory$2;-><init>()V

    goto :goto_0

    .line 13
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
