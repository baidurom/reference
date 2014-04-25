.class public Lcom/android/phone/SimAssociateHandler$ContactContentObserver;
.super Landroid/database/ContentObserver;
.source "SimAssociateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimAssociateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContactContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SimAssociateHandler;


# direct methods
.method public constructor <init>(Lcom/android/phone/SimAssociateHandler;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/phone/SimAssociateHandler$ContactContentObserver;->this$0:Lcom/android/phone/SimAssociateHandler;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/SimAssociateHandler$ContactContentObserver;->this$0:Lcom/android/phone/SimAssociateHandler;

    const-string v1, "ContactContentObserver: "

    invoke-virtual {v0, v1}, Lcom/android/phone/SimAssociateHandler;->log(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/phone/SimAssociateHandler$ContactContentObserver;->this$0:Lcom/android/phone/SimAssociateHandler;

    #getter for: Lcom/android/phone/SimAssociateHandler;->mCacheDirty:Z
    invoke-static {v0}, Lcom/android/phone/SimAssociateHandler;->access$000(Lcom/android/phone/SimAssociateHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/phone/SimAssociateHandler$ContactContentObserver;->this$0:Lcom/android/phone/SimAssociateHandler;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/SimAssociateHandler;->mCacheDirty:Z
    invoke-static {v0, v1}, Lcom/android/phone/SimAssociateHandler;->access$002(Lcom/android/phone/SimAssociateHandler;Z)Z

    .line 68
    iget-object v0, p0, Lcom/android/phone/SimAssociateHandler$ContactContentObserver;->this$0:Lcom/android/phone/SimAssociateHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContactContentObserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SimAssociateHandler$ContactContentObserver;->this$0:Lcom/android/phone/SimAssociateHandler;

    #getter for: Lcom/android/phone/SimAssociateHandler;->mCacheDirty:Z
    invoke-static {v2}, Lcom/android/phone/SimAssociateHandler;->access$000(Lcom/android/phone/SimAssociateHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/SimAssociateHandler;->log(Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method
