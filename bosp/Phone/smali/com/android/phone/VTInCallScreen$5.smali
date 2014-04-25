.class Lcom/android/phone/VTInCallScreen$5;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VTInCallScreen;->onVTInCallVideoSetting()V
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
    .line 1335
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v2, 0x7f0b03ae

    .line 1337
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$1000(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$1000(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1339
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$1002(Lcom/android/phone/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1341
    :cond_0
    if-nez p2, :cond_2

    .line 1343
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v1, "onVTInCallVideoSetting() : select - 0 "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 1344
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1346
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 1378
    :goto_0
    return-void

    .line 1348
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    #calls: Lcom/android/phone/VTInCallScreen;->showVTLocalZoom()V
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$1100(Lcom/android/phone/VTInCallScreen;)V

    goto :goto_0

    .line 1349
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p2, :cond_4

    .line 1351
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v1, "onVTInCallVideoSetting() : select - 1 "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 1352
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1354
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 1356
    :cond_3
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    #calls: Lcom/android/phone/VTInCallScreen;->showVTLocalBrightness()V
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$1200(Lcom/android/phone/VTInCallScreen;)V

    goto :goto_0

    .line 1357
    :cond_4
    const/4 v0, 0x2

    if-ne v0, p2, :cond_6

    .line 1359
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v1, "onVTInCallVideoSetting() : select - 2 "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 1360
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1362
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/VTInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/VTInCallScreen;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$200(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 1364
    :cond_5
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    #calls: Lcom/android/phone/VTInCallScreen;->showVTLocalContrast()V
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$1300(Lcom/android/phone/VTInCallScreen;)V

    goto :goto_0

    .line 1365
    :cond_6
    const/4 v0, 0x3

    if-ne v0, p2, :cond_7

    .line 1367
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v1, "onVTInCallVideoSetting() : select - 3 "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 1368
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    #calls: Lcom/android/phone/VTInCallScreen;->onVTInCallVideoSettingLocalEffect()V
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$1400(Lcom/android/phone/VTInCallScreen;)V

    goto :goto_0

    .line 1369
    :cond_7
    const/4 v0, 0x4

    if-ne v0, p2, :cond_8

    .line 1371
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v1, "onVTInCallVideoSetting() : select - 4 "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 1372
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    #calls: Lcom/android/phone/VTInCallScreen;->onVTInCallVideoSettingLocalNightMode()V
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$1500(Lcom/android/phone/VTInCallScreen;)V

    goto/16 :goto_0

    .line 1375
    :cond_8
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v1, "onVTInCallVideoSetting() : select - 5 "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$5;->this$0:Lcom/android/phone/VTInCallScreen;

    #calls: Lcom/android/phone/VTInCallScreen;->onVTInCallVideoSettingPeerQuality()V
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$1600(Lcom/android/phone/VTInCallScreen;)V

    goto/16 :goto_0
.end method
