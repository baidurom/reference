.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$10;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleGprsTypePickSim2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1388
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$10;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 1390
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$10;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1391
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$10;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1392
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$10;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mGPRSDialog2:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1394
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1430
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$10;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleGPRSTypePick, default, mode = NONE"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$10;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gprs_connection_setting"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1437
    :goto_0
    :pswitch_0
    return-void

    .line 1398
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$10;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleGPRSTypePick, mode = SIM 2"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_2
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1401
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_3

    .line 1402
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->setGprsConnType(II)V

    .line 1403
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->setGprsConnType(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$10;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gprs_connection_setting"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1405
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_3
    :try_start_1
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "Connect to phone service error"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1408
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1409
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "Connect to phone service error"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1418
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$10;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DEBUG:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleGPRSTypePick, mode = NONE"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$10;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gprs_connection_setting"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
