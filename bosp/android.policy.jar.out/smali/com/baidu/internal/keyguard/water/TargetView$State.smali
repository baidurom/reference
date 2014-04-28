.class abstract Lcom/baidu/internal/keyguard/water/TargetView$State;
.super Ljava/lang/Object;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/water/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "State"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/water/TargetView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/water/TargetView;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/TargetView$State;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract draw()V
.end method

.method public enter(Lcom/baidu/internal/keyguard/water/TargetView$State;)V
    .locals 0
    .parameter "oldState"

    .prologue
    .line 480
    return-void
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter "context"

    .prologue
    .line 486
    const/4 v0, 0x0

    return-object v0
.end method

.method public leave()V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public setIconState(Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/water/TargetView$IconState;)V
    .locals 0
    .parameter "t"
    .parameter "state"

    .prologue
    .line 490
    invoke-virtual {p1, p2}, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->setIconState(Lcom/baidu/internal/keyguard/water/TargetView$IconState;)V

    .line 491
    return-void
.end method
