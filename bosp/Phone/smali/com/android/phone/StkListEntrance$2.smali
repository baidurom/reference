.class Lcom/android/phone/StkListEntrance$2;
.super Ljava/lang/Object;
.source "StkListEntrance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/StkListEntrance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/StkListEntrance;


# direct methods
.method constructor <init>(Lcom/android/phone/StkListEntrance;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/phone/StkListEntrance$2;->this$0:Lcom/android/phone/StkListEntrance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 246
    const-string v1, "StkListEntrance"

    const-string v2, "serviceComplete run"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/phone/StkListEntrance$2;->this$0:Lcom/android/phone/StkListEntrance;

    #getter for: Lcom/android/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/phone/StkListEntrance;->access$100(Lcom/android/phone/StkListEntrance;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v0

    .line 248
    .local v0, nRet:I
    const-string v1, "StkListEntrance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceComplete result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->resultToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lcom/android/phone/StkListEntrance$2;->this$0:Lcom/android/phone/StkListEntrance;

    #getter for: Lcom/android/phone/StkListEntrance;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/android/phone/StkListEntrance;->access$100(Lcom/android/phone/StkListEntrance;)Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 253
    :cond_0
    return-void
.end method
