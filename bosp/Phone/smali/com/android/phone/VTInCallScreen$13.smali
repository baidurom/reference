.class Lcom/android/phone/VTInCallScreen$13;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VTInCallScreen;->onVTInCallVideoSettingPeerQuality()V
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
    .line 1567
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen$13;->this$0:Lcom/android/phone/VTInCallScreen;

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

    .line 1569
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$13;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$2000(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1570
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$13;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$2000(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1571
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$13;->this$0:Lcom/android/phone/VTInCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$2002(Lcom/android/phone/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1573
    :cond_0
    if-nez p2, :cond_2

    .line 1575
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$13;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v1, "onVTInCallVideoSettingPeerQuality() : VTManager.getInstance().setVideoQuality( VTManager.VT_VQ_NORMAL );"

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 1576
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->setVideoQuality(I)V

    .line 1582
    :cond_1
    :goto_0
    return-void

    .line 1577
    :cond_2
    if-ne v2, p2, :cond_1

    .line 1579
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$13;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v1, "onVTInCallVideoSettingPeerQuality() : VTManager.getInstance().setVideoQuality( VTManager.VT_VQ_SHARP );"

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 1580
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->setVideoQuality(I)V

    goto :goto_0
.end method
