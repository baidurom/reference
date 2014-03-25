.class public Lcom/baidu/security/sysop/YiRunningState$ServiceItem;
.super Lcom/baidu/security/sysop/YiRunningState$BaseItem;
.source "YiRunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/security/sysop/YiRunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceItem"
.end annotation


# instance fields
.field public mMergedItem:Lcom/baidu/security/sysop/YiRunningState$MergedItem;

.field public mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

.field public mServiceInfo:Landroid/content/pm/ServiceInfo;

.field public mShownAsStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/security/sysop/YiRunningState$BaseItem;-><init>(Z)V

    .line 266
    return-void
.end method
