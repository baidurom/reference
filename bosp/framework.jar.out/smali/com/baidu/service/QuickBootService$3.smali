.class Lcom/baidu/service/QuickBootService$3;
.super Ljava/lang/Object;
.source "QuickBootService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/service/QuickBootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/service/QuickBootService;


# direct methods
.method constructor <init>(Lcom/baidu/service/QuickBootService;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/baidu/service/QuickBootService$3;->this$0:Lcom/baidu/service/QuickBootService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/baidu/service/QuickBootService$3;->this$0:Lcom/baidu/service/QuickBootService;

    #calls: Lcom/baidu/service/QuickBootService;->stopCharger()V
    invoke-static {v0}, Lcom/baidu/service/QuickBootService;->access$600(Lcom/baidu/service/QuickBootService;)V

    .line 500
    return-void
.end method
