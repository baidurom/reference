.class Lcom/android/internal/telephony/cat/CatService$1;
.super Landroid/os/Handler;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 316
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 318
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache DISPLAY_TEXT time out, sim_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mSimId:I
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mSimId:I
    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->access$000(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v1

    #calls: Lcom/android/internal/telephony/cat/CatService;->clearCachedDisplayText(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->access$100(Lcom/android/internal/telephony/cat/CatService;I)V

    goto :goto_0

    .line 322
    :sswitch_1
    const-string/jumbo v0, "modem MODEM_EVDL_CALL_CONN_TIMEOUT timout"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallConn:I
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$200(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v0

    if-lez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$210(Lcom/android/internal/telephony/cat/CatService;)I

    goto :goto_0

    .line 327
    :sswitch_2
    const-string/jumbo v0, "modem MODEM_EVDL_CALL_DISCONN_TIMEOUT timout"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    #getter for: Lcom/android/internal/telephony/cat/CatService;->mNumEventDownloadCallDisConn:I
    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$300(Lcom/android/internal/telephony/cat/CatService;)I

    move-result v0

    if-lez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->access$310(Lcom/android/internal/telephony/cat/CatService;)I

    goto :goto_0

    .line 316
    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x24 -> :sswitch_0
    .end sparse-switch
.end method
