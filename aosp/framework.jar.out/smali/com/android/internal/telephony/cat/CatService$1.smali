.class Lcom/android/internal/telephony/cat/CatService$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 1278
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1281
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1282
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CatServiceReceiver action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1283
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    if-ne v0, v1, :cond_0

    .line 1284
    const-string/jumbo v1, "remove event list because of ipo shutdown"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1285
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$1;->this$0:Lcom/android/internal/telephony/cat/CatService;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/telephony/cat/CatService;->mEventList:[B
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatService;->access$002(Lcom/android/internal/telephony/cat/CatService;[B)[B

    .line 1287
    :cond_0
    return-void
.end method
