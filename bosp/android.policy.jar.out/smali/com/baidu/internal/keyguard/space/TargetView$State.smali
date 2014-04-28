.class abstract Lcom/baidu/internal/keyguard/space/TargetView$State;
.super Ljava/lang/Object;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/space/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "State"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/space/TargetView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/space/TargetView;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/TargetView$State;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract draw()V
.end method

.method public enter(Lcom/baidu/internal/keyguard/space/TargetView$State;)V
    .locals 0
    .parameter "oldState"

    .prologue
    .line 511
    return-void
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter "context"

    .prologue
    .line 517
    const/4 v0, 0x0

    return-object v0
.end method

.method public leave()V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method public setIconState(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V
    .locals 0
    .parameter "t"
    .parameter "state"

    .prologue
    .line 521
    invoke-virtual {p1, p2}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->setIconState(Lcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    .line 522
    return-void
.end method
