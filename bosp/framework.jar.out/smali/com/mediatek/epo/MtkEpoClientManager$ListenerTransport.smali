.class Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;
.super Lcom/mediatek/epo/IMtkEpoStatusListener$Stub;
.source "MtkEpoClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epo/MtkEpoClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# static fields
.field private static final STATUS_CHANGED:I = 0x1


# instance fields
.field private mListener:Lcom/mediatek/epo/MtkEpoStatusListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/mediatek/epo/MtkEpoClientManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/epo/MtkEpoClientManager;Lcom/mediatek/epo/MtkEpoStatusListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;->this$0:Lcom/mediatek/epo/MtkEpoClientManager;

    invoke-direct {p0}, Lcom/mediatek/epo/IMtkEpoStatusListener$Stub;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;->mListener:Lcom/mediatek/epo/MtkEpoStatusListener;

    .line 102
    new-instance v0, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport$1;-><init>(Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;Lcom/mediatek/epo/MtkEpoClientManager;)V

    iput-object v0, p0, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 108
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 112
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 115
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 116
    .local v1, status:I
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;->mListener:Lcom/mediatek/epo/MtkEpoStatusListener;

    invoke-interface {v2, v1}, Lcom/mediatek/epo/MtkEpoStatusListener;->onStatusChanged(I)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 124
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 125
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v0, b:Landroid/os/Bundle;
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    iget-object v2, p0, Lcom/mediatek/epo/MtkEpoClientManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    return-void
.end method
