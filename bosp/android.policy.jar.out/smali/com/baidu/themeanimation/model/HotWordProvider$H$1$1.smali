.class Lcom/baidu/themeanimation/model/HotWordProvider$H$1$1;
.super Ljava/lang/Object;
.source "HotWordProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/themeanimation/model/HotWordProvider$H$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/baidu/themeanimation/model/HotWordProvider$H$1;


# direct methods
.method constructor <init>(Lcom/baidu/themeanimation/model/HotWordProvider$H$1;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/baidu/themeanimation/model/HotWordProvider$H$1$1;->this$2:Lcom/baidu/themeanimation/model/HotWordProvider$H$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/baidu/themeanimation/model/HotWordProvider$H$1$1;->this$2:Lcom/baidu/themeanimation/model/HotWordProvider$H$1;

    iget-object v0, v0, Lcom/baidu/themeanimation/model/HotWordProvider$H$1;->this$1:Lcom/baidu/themeanimation/model/HotWordProvider$H;

    iget-object v1, p0, Lcom/baidu/themeanimation/model/HotWordProvider$H$1$1;->this$2:Lcom/baidu/themeanimation/model/HotWordProvider$H$1;

    iget-object v1, v1, Lcom/baidu/themeanimation/model/HotWordProvider$H$1;->this$1:Lcom/baidu/themeanimation/model/HotWordProvider$H;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/model/HotWordProvider$H;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/themeanimation/model/HotWordProvider$H;->sendMessage(Landroid/os/Message;)Z

    .line 148
    return-void
.end method
