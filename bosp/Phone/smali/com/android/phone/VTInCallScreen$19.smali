.class Lcom/android/phone/VTInCallScreen$19;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VTInCallScreen;->onReceiveVTManagerReady()V
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
    .line 2833
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen$19;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$19;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v1, " user no selection , default show !! "

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 2837
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$19;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v1, "Incallscreen, before userSelect default"

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 2838
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->userSelectYes(I)V

    .line 2839
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$19;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v1, "Incallscreen, after userSelect default"

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 2841
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$19;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$2500(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2842
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$19;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$2500(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2843
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$19;->this$0:Lcom/android/phone/VTInCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$2502(Lcom/android/phone/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2845
    :cond_0
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    const-string v1, "0"

    iput-object v1, v0, Lcom/android/phone/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    .line 2846
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$19;->this$0:Lcom/android/phone/VTInCallScreen;

    #calls: Lcom/android/phone/VTInCallScreen;->onVTHideMeClick()V
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$2600(Lcom/android/phone/VTInCallScreen;)V

    .line 2847
    return-void
.end method
