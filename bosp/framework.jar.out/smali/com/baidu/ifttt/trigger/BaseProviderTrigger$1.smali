.class Lcom/baidu/ifttt/trigger/BaseProviderTrigger$1;
.super Landroid/database/ContentObserver;
.source "BaseProviderTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/ifttt/trigger/BaseProviderTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/ifttt/trigger/BaseProviderTrigger;


# direct methods
.method constructor <init>(Lcom/baidu/ifttt/trigger/BaseProviderTrigger;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/baidu/ifttt/trigger/BaseProviderTrigger$1;->this$0:Lcom/baidu/ifttt/trigger/BaseProviderTrigger;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 54
    iget-object v0, p0, Lcom/baidu/ifttt/trigger/BaseProviderTrigger$1;->this$0:Lcom/baidu/ifttt/trigger/BaseProviderTrigger;

    invoke-virtual {v0}, Lcom/baidu/ifttt/trigger/BaseProviderTrigger;->onTrigger()V

    .line 55
    return-void
.end method
