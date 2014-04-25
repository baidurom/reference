.class final Lcom/android/phone/PhoneUtils$2;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneUtils;->displayMMICompleteExt(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$inputText:Landroid/widget/EditText;

.field final synthetic val$mmiCode:Lcom/android/internal/telephony/MmiCode;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;

.field final synthetic val$simId:I


# direct methods
.method constructor <init>(ILandroid/widget/EditText;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/MmiCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1395
    iput p1, p0, Lcom/android/phone/PhoneUtils$2;->val$simId:I

    iput-object p2, p0, Lcom/android/phone/PhoneUtils$2;->val$inputText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/PhoneUtils$2;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p4, p0, Lcom/android/phone/PhoneUtils$2;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 1397
    packed-switch p2, :pswitch_data_0

    .line 1421
    :goto_0
    return-void

    .line 1402
    :pswitch_0
    const-string v0, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayMMIcomplete sendUssdResponseGemini button, simId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PhoneUtils$2;->val$simId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const-string v0, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayMMIcomplete USSR string :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneUtils$2;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$2;->val$phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/android/phone/PhoneUtils$2;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PhoneUtils$2;->val$simId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendUssdResponseGemini(Ljava/lang/String;I)V

    .line 1408
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->access$502(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1409
    sput-object v3, Lcom/android/phone/PhoneUtils;->mUssdActivity:Lcom/android/phone/UssdAlertActivity;

    goto :goto_0

    .line 1413
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$2;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$2;->val$mmiCode:Lcom/android/internal/telephony/MmiCode;

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    .line 1417
    :cond_0
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->access$502(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1418
    sput-object v3, Lcom/android/phone/PhoneUtils;->mUssdActivity:Lcom/android/phone/UssdAlertActivity;

    goto :goto_0

    .line 1397
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
