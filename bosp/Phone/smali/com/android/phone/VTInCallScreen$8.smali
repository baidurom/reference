.class Lcom/android/phone/VTInCallScreen$8;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VTInCallScreen;->onVTInCallVideoSettingLocalEffect()V
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
    .line 1425
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen$8;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$8;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$1700(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$8;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$1700(Lcom/android/phone/VTInCallScreen;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1429
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$8;->this$0:Lcom/android/phone/VTInCallScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/VTInCallScreen;->access$1702(Lcom/android/phone/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1431
    :cond_0
    return-void
.end method
