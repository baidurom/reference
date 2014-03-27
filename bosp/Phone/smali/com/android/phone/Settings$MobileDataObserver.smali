.class Lcom/android/phone/Settings$MobileDataObserver;
.super Landroid/database/ContentObserver;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method public constructor <init>(Lcom/android/phone/Settings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/phone/Settings$MobileDataObserver;->this$0:Lcom/android/phone/Settings;

    .line 407
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 408
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 412
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 413
    iget-object v0, p0, Lcom/android/phone/Settings$MobileDataObserver;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;
    invoke-static {v0}, Lcom/android/phone/Settings;->access$000(Lcom/android/phone/Settings;)Lcom/android/phone/Settings$MyHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Settings$MobileDataObserver;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;
    invoke-static {v1}, Lcom/android/phone/Settings;->access$000(Lcom/android/phone/Settings;)Lcom/android/phone/Settings$MyHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/Settings$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 414
    return-void
.end method
