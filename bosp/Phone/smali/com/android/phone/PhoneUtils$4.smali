.class final Lcom/android/phone/PhoneUtils$4;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

.field final synthetic val$newDialog:Landroid/app/AlertDialog;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;

.field final synthetic val$simId:I


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/android/internal/telephony/Phone;ILandroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1450
    iput-object p1, p0, Lcom/android/phone/PhoneUtils$4;->val$inputText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/phone/PhoneUtils$4;->val$phone:Lcom/android/internal/telephony/Phone;

    iput p3, p0, Lcom/android/phone/PhoneUtils$4;->val$simId:I

    iput-object p4, p0, Lcom/android/phone/PhoneUtils$4;->val$newDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1452
    sparse-switch p2, :sswitch_data_0

    .line 1483
    :cond_0
    :goto_0
    return v0

    :sswitch_0
    move v0, v1

    .line 1455
    goto :goto_0

    .line 1465
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1467
    const-string v2, "PhoneUtils"

    const-string v3, "sdisplayMMIcomplete sendUssdResponseGemini key"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-object v2, p0, Lcom/android/phone/PhoneUtils$4;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$4;->val$phone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, p0, Lcom/android/phone/PhoneUtils$4;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/PhoneUtils$4;->val$simId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendUssdResponseGemini(Ljava/lang/String;I)V

    .line 1475
    iget-object v0, p0, Lcom/android/phone/PhoneUtils$4;->val$newDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    move v0, v1

    .line 1476
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1479
    goto :goto_0

    .line 1452
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method
