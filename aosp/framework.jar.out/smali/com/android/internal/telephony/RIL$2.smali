.class Lcom/android/internal/telephony/RIL$2;
.super Landroid/os/Handler;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .parameter

    .prologue
    .line 6993
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 6996
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 6997
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    const-string v1, "get MSG_GET_DATA_CALL_LIST_DONE, notify data call list changed"

    #calls: Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 6998
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v1, v0, Lcom/android/internal/telephony/RIL;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 7000
    :cond_0
    return-void
.end method
