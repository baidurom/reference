.class Lcom/android/server/net/NetworkStatsService$10;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .parameter

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 1361
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1376
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1363
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1364
    .local v0, flags:I
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    #calls: Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    invoke-static {v2, v0}, Lcom/android/server/net/NetworkStatsService;->access$900(Lcom/android/server/net/NetworkStatsService;I)V

    goto :goto_0

    .line 1368
    .end local v0           #flags:I
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    #calls: Lcom/android/server/net/NetworkStatsService;->updateIfaces()V
    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;)V

    goto :goto_0

    .line 1372
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$10;->this$0:Lcom/android/server/net/NetworkStatsService;

    #calls: Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V
    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)V

    goto :goto_0

    .line 1361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
