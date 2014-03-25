.class final Lcom/baidu/service/power/TriggerFactory$3;
.super Lcom/baidu/service/power/AlarmTrigger;
.source "TriggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/service/power/TriggerFactory;->createTrigger(I)Lcom/baidu/service/power/Trigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/baidu/service/power/AlarmTrigger;-><init>()V

    return-void
.end method


# virtual methods
.method notifyChanged(Lcom/baidu/service/power/Trigger;)V
    .locals 0
    .parameter "trigger"

    .prologue
    .line 91
    return-void
.end method

.method prepare(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 87
    return-void
.end method

.method stop(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 89
    return-void
.end method
