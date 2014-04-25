.class Lcom/android/phone/PreCheckForRunning$ServiceComplete;
.super Ljava/lang/Object;
.source "MultipleSimActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PreCheckForRunning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceComplete"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreCheckForRunning;


# direct methods
.method constructor <init>(Lcom/android/phone/PreCheckForRunning;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/PreCheckForRunning$ServiceComplete;->this$0:Lcom/android/phone/PreCheckForRunning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/phone/PreCheckForRunning$ServiceComplete;->this$0:Lcom/android/phone/PreCheckForRunning;

    #getter for: Lcom/android/phone/PreCheckForRunning;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/phone/PreCheckForRunning;->access$000(Lcom/android/phone/PreCheckForRunning;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v0

    .line 68
    .local v0, result:I
    const-string v1, "Settings/PreCheckForRunning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceComplete with the result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->resultToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PreCheckForRunning$ServiceComplete;->this$0:Lcom/android/phone/PreCheckForRunning;

    #getter for: Lcom/android/phone/PreCheckForRunning;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/PreCheckForRunning;->access$200(Lcom/android/phone/PreCheckForRunning;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PreCheckForRunning$ServiceComplete;->this$0:Lcom/android/phone/PreCheckForRunning;

    #getter for: Lcom/android/phone/PreCheckForRunning;->intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/PreCheckForRunning;->access$100(Lcom/android/phone/PreCheckForRunning;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    :cond_1
    return-void
.end method
