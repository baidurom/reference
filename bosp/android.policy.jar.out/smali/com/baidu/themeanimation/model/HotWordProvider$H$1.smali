.class Lcom/baidu/themeanimation/model/HotWordProvider$H$1;
.super Ljava/lang/Thread;
.source "HotWordProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/themeanimation/model/HotWordProvider$H;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/themeanimation/model/HotWordProvider$H;


# direct methods
.method constructor <init>(Lcom/baidu/themeanimation/model/HotWordProvider$H;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/baidu/themeanimation/model/HotWordProvider$H$1;->this$1:Lcom/baidu/themeanimation/model/HotWordProvider$H;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider$H$1;->this$1:Lcom/baidu/themeanimation/model/HotWordProvider$H;

    iget-object v0, v0, Lcom/baidu/themeanimation/model/HotWordProvider$H;->this$0:Lcom/baidu/themeanimation/model/HotWordProvider;

    #calls: Lcom/baidu/themeanimation/model/HotWordProvider;->getKeyWord()V
    invoke-static {v0}, Lcom/baidu/themeanimation/model/HotWordProvider;->access$100(Lcom/baidu/themeanimation/model/HotWordProvider;)V

    .line 144
    iget-object v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider$H$1;->this$1:Lcom/baidu/themeanimation/model/HotWordProvider$H;

    new-instance v1, Lcom/baidu/themeanimation/model/HotWordProvider$H$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/themeanimation/model/HotWordProvider$H$1$1;-><init>(Lcom/baidu/themeanimation/model/HotWordProvider$H$1;)V

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/model/HotWordProvider$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    return-void
.end method
