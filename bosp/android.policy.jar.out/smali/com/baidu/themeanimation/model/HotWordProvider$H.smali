.class Lcom/baidu/themeanimation/model/HotWordProvider$H;
.super Landroid/os/Handler;
.source "HotWordProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/model/HotWordProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/themeanimation/model/HotWordProvider;


# direct methods
.method private constructor <init>(Lcom/baidu/themeanimation/model/HotWordProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/baidu/themeanimation/model/HotWordProvider$H;->this$0:Lcom/baidu/themeanimation/model/HotWordProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/themeanimation/model/HotWordProvider;Lcom/baidu/themeanimation/model/HotWordProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/baidu/themeanimation/model/HotWordProvider$H;-><init>(Lcom/baidu/themeanimation/model/HotWordProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 141
    new-instance v0, Lcom/baidu/themeanimation/model/HotWordProvider$H$1;

    invoke-direct {v0, p0}, Lcom/baidu/themeanimation/model/HotWordProvider$H$1;-><init>(Lcom/baidu/themeanimation/model/HotWordProvider$H;)V

    invoke-virtual {v0}, Lcom/baidu/themeanimation/model/HotWordProvider$H$1;->start()V

    .line 152
    return-void
.end method
