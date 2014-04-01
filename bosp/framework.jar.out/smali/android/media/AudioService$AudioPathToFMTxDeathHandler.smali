.class Landroid/media/AudioService$AudioPathToFMTxDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioPathToFMTxDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter "cb"

    .prologue
    .line 4005
    iput-object p1, p0, Landroid/media/AudioService$AudioPathToFMTxDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4006
    iput-object p2, p0, Landroid/media/AudioService$AudioPathToFMTxDeathHandler;->mCb:Landroid/os/IBinder;

    .line 4007
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 4010
    const-string v0, "AudioService"

    const-string v1, "AudioPathToFMTxDeathHandler::binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4011
    iget-object v0, p0, Landroid/media/AudioService$AudioPathToFMTxDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->setAudioPathOutofFMTx()Z

    .line 4012
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 4015
    iget-object v0, p0, Landroid/media/AudioService$AudioPathToFMTxDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
