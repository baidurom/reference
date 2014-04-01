.class Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport$1;
.super Landroid/os/Handler;
.source "MtkEpoClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;-><init>(Lcom/mediatek/epo/MtkEpoClientManager;Lcom/mediatek/epo/MtkEpoStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;

.field final synthetic val$this$0:Lcom/mediatek/epo/MtkEpoClientManager;


# direct methods
.method constructor <init>(Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;Lcom/mediatek/epo/MtkEpoClientManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport$1;->this$1:Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;

    iput-object p2, p0, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport$1;->val$this$0:Lcom/mediatek/epo/MtkEpoClientManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport$1;->this$1:Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;

    #calls: Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;->access$000(Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;Landroid/os/Message;)V

    .line 106
    return-void
.end method
