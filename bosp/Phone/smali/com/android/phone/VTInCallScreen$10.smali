.class Lcom/android/phone/VTInCallScreen$10;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VTInCallScreen;->onVTInCallVideoSettingLocalNightMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VTInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/VTInCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen$10;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 1504
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$10;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$1900(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1505
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$10;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$1900(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1506
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$10;->this$0:Lcom/android/phone/VTInCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$1902(Lcom/android/phone/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1508
    :cond_0
    if-nez p2, :cond_2

    .line 1510
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$10;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v1, "onVTInCallVideoSettingLocalNightMode() : VTManager.getInstance().setNightMode(true);"

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 1511
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->setNightMode(Z)V

    .line 1512
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$10;->this$0:Lcom/android/phone/VTInCallScreen;

    #calls: Lcom/android/phone/VTInCallScreen;->updateLocalZoomOrBrightness()V
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$1800(Lcom/android/phone/VTInCallScreen;)V

    .line 1519
    :cond_1
    :goto_0
    return-void

    .line 1513
    :cond_2
    if-ne v2, p2, :cond_1

    .line 1515
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$10;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v1, "onVTInCallVideoSettingLocalNightMode() : VTManager.getInstance().setNightMode(false);"

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 1516
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->setNightMode(Z)V

    .line 1517
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$10;->this$0:Lcom/android/phone/VTInCallScreen;

    #calls: Lcom/android/phone/VTInCallScreen;->updateLocalZoomOrBrightness()V
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$1800(Lcom/android/phone/VTInCallScreen;)V

    goto :goto_0
.end method
