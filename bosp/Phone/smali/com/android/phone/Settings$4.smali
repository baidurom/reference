.class Lcom/android/phone/Settings$4;
.super Landroid/os/Handler;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method constructor <init>(Lcom/android/phone/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/android/phone/Settings$4;->this$0:Lcom/android/phone/Settings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1250
    iget v1, p1, Landroid/os/Message;->what:I

    sget v2, Lcom/android/phone/Settings;->DATA_STATE_CHANGE_TIMEOUT:I

    if-ne v1, v2, :cond_0

    .line 1251
    iget-object v1, p0, Lcom/android/phone/Settings$4;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/Settings;->access$600(Lcom/android/phone/Settings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/Settings$4;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/Settings;->access$600(Lcom/android/phone/Settings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/Settings$4;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->isChangeData:Z
    invoke-static {v1}, Lcom/android/phone/Settings;->access$400(Lcom/android/phone/Settings;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1253
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/Settings$4;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/phone/Settings;->access$600(Lcom/android/phone/Settings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    :goto_0
    iget-object v1, p0, Lcom/android/phone/Settings$4;->this$0:Lcom/android/phone/Settings;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/Settings;->pd:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/phone/Settings;->access$602(Lcom/android/phone/Settings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1258
    iget-object v1, p0, Lcom/android/phone/Settings$4;->this$0:Lcom/android/phone/Settings;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/Settings;->isChangeData:Z
    invoke-static {v1, v2}, Lcom/android/phone/Settings;->access$402(Lcom/android/phone/Settings;Z)Z

    .line 1261
    :cond_0
    return-void

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NetworkSettings"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
