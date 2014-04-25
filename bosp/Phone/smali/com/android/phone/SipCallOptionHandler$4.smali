.class Lcom/android/phone/SipCallOptionHandler$4;
.super Ljava/lang/Object;
.source "SipCallOptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SipCallOptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SipCallOptionHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/SipCallOptionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/phone/SipCallOptionHandler$4;->this$0:Lcom/android/phone/SipCallOptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 543
    const-string v2, "+CallOptionHandler.run"

    invoke-static {v2}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    .line 544
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$4;->this$0:Lcom/android/phone/SipCallOptionHandler;

    iget-object v2, v2, Lcom/android/phone/SipCallOptionHandler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v2}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v1

    .line 547
    .local v1, result:I
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$4;->this$0:Lcom/android/phone/SipCallOptionHandler;

    #calls: Lcom/android/phone/SipCallOptionHandler;->dismissProgressIndication()V
    invoke-static {v2}, Lcom/android/phone/SipCallOptionHandler;->access$800(Lcom/android/phone/SipCallOptionHandler;)V

    .line 549
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$4;->this$0:Lcom/android/phone/SipCallOptionHandler;

    const/4 v3, 0x0

    #calls: Lcom/android/phone/SipCallOptionHandler;->afterCheckSIMStatus(II)Z
    invoke-static {v2, v1, v3}, Lcom/android/phone/SipCallOptionHandler;->access$900(Lcom/android/phone/SipCallOptionHandler;II)Z

    move-result v0

    .line 550
    .local v0, bailout:Z
    const-string v2, "-CallOptionHandler.run"

    invoke-static {v2}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    .line 551
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$4;->this$0:Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v2}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    .line 552
    return-void
.end method
