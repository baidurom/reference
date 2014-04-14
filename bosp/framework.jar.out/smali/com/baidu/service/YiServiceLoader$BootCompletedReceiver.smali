.class Lcom/baidu/service/YiServiceLoader$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "YiServiceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/service/YiServiceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/service/YiServiceLoader;


# direct methods
.method private constructor <init>(Lcom/baidu/service/YiServiceLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/baidu/service/YiServiceLoader$BootCompletedReceiver;->this$0:Lcom/baidu/service/YiServiceLoader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/service/YiServiceLoader;Lcom/baidu/service/YiServiceLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/service/YiServiceLoader$BootCompletedReceiver;-><init>(Lcom/baidu/service/YiServiceLoader;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/baidu/service/YiServiceLoader$BootCompletedReceiver;->this$0:Lcom/baidu/service/YiServiceLoader;

    sget v1, Lcom/baidu/service/YiServiceManager;->START_TYPE_BOOT_COMPLETED:I

    #calls: Lcom/baidu/service/YiServiceLoader;->startupServices(I)V
    invoke-static {v0, v1}, Lcom/baidu/service/YiServiceLoader;->access$000(Lcom/baidu/service/YiServiceLoader;I)V

    .line 32
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 34
    :cond_0
    return-void
.end method
