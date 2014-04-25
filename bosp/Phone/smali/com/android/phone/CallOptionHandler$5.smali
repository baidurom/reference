.class Lcom/android/phone/CallOptionHandler$5;
.super Ljava/lang/Object;
.source "CallOptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallOptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallOptionHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/CallOptionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/android/phone/CallOptionHandler$5;->this$0:Lcom/android/phone/CallOptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 620
    const-string v3, "+CallOptionHandler.run"

    invoke-static {v3}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    .line 621
    iget-object v3, p0, Lcom/android/phone/CallOptionHandler$5;->this$0:Lcom/android/phone/CallOptionHandler;

    iget-object v3, v3, Lcom/android/phone/CallOptionHandler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v3}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v1

    .line 622
    .local v1, result:I
    iget-object v3, p0, Lcom/android/phone/CallOptionHandler$5;->this$0:Lcom/android/phone/CallOptionHandler;

    iget-object v3, v3, Lcom/android/phone/CallOptionHandler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v3}, Lcom/mediatek/CellConnService/CellConnMgr;->getPreferSlot()I

    move-result v2

    .line 623
    .local v2, slot:I
    iget-object v3, p0, Lcom/android/phone/CallOptionHandler$5;->this$0:Lcom/android/phone/CallOptionHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run, result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 625
    iget-object v3, p0, Lcom/android/phone/CallOptionHandler$5;->this$0:Lcom/android/phone/CallOptionHandler;

    #calls: Lcom/android/phone/CallOptionHandler;->afterCheckSIMStatus(II)Z
    invoke-static {v3, v1, v2}, Lcom/android/phone/CallOptionHandler;->access$000(Lcom/android/phone/CallOptionHandler;II)Z

    move-result v0

    .line 626
    .local v0, bailout:Z
    const-string v3, "-CallOptionHandler.run"

    invoke-static {v3}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    .line 627
    if-eqz v0, :cond_0

    .line 628
    iget-object v3, p0, Lcom/android/phone/CallOptionHandler$5;->this$0:Lcom/android/phone/CallOptionHandler;

    invoke-virtual {v3}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    .line 629
    :cond_0
    return-void
.end method
