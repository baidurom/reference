.class Lcom/android/phone/ChangeIccPinScreen$2;
.super Ljava/lang/Object;
.source "ChangeIccPinScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ChangeIccPinScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ChangeIccPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/ChangeIccPinScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    .line 208
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/Button;

    move-result-object v10

    if-ne p1, v10, :cond_1

    .line 211
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$400(Lcom/android/phone/ChangeIccPinScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v11, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mSimId:I
    invoke-static {v11}, Lcom/android/phone/ChangeIccPinScreen;->access$300(Lcom/android/phone/ChangeIccPinScreen;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    .line 215
    .local v2, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    if-eqz v2, :cond_1

    .line 216
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$500(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, oldPin:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$600(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, puk:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$700(Lcom/android/phone/ChangeIccPinScreen;)Lcom/android/phone/ChangeIccPinScreen$EntryState;

    move-result-object v10

    sget-object v11, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v10, v11, :cond_3

    .line 219
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_2

    .line 220
    :cond_0
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$600(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->clear()V

    .line 221
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$800(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;

    move-result-object v10

    const v11, 0x7f0b017c

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 222
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$800(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$900(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mPUKCode:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$600(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->requestFocus()Z

    .line 299
    .end local v2           #iccCardInterface:Lcom/android/internal/telephony/IccCard;
    .end local v6           #oldPin:Ljava/lang/String;
    .end local v7           #puk:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 227
    .restart local v2       #iccCardInterface:Lcom/android/internal/telephony/IccCard;
    .restart local v6       #oldPin:Ljava/lang/String;
    .restart local v7       #puk:Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mBadPukError:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$800(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    :goto_1
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$1200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, newPin1:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$1300(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, newPin2:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #calls: Lcom/android/phone/ChangeIccPinScreen;->validateNewPin(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v10, v4, v5}, Lcom/android/phone/ChangeIccPinScreen;->access$1400(Lcom/android/phone/ChangeIccPinScreen;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 247
    .local v1, error:I
    packed-switch v1, :pswitch_data_0

    .line 270
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$1500(Lcom/android/phone/ChangeIccPinScreen;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x64

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 273
    .local v0, callBack:Landroid/os/Message;
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "change pin attempt: old="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", newPin="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/ChangeIccPinScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/ChangeIccPinScreen;->access$1600(Lcom/android/phone/ChangeIccPinScreen;Ljava/lang/String;)V

    .line 276
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #calls: Lcom/android/phone/ChangeIccPinScreen;->reset()V
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$1700(Lcom/android/phone/ChangeIccPinScreen;)V

    .line 278
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$1000(Lcom/android/phone/ChangeIccPinScreen;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 279
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mState:Lcom/android/phone/ChangeIccPinScreen$EntryState;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$700(Lcom/android/phone/ChangeIccPinScreen;)Lcom/android/phone/ChangeIccPinScreen$EntryState;

    move-result-object v10

    sget-object v11, Lcom/android/phone/ChangeIccPinScreen$EntryState;->ES_PUK:Lcom/android/phone/ChangeIccPinScreen$EntryState;

    if-ne v10, v11, :cond_a

    .line 283
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$1200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/phone/ChangeIccPinScreen;->access$1500(Lcom/android/phone/ChangeIccPinScreen;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x64

    invoke-static {v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v2, v7, v10, v11}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 230
    .end local v0           #callBack:Landroid/os/Message;
    .end local v1           #error:I
    .end local v4           #newPin1:Ljava/lang/String;
    .end local v5           #newPin2:Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x8

    if-le v10, v11, :cond_6

    .line 231
    :cond_4
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$1000(Lcom/android/phone/ChangeIccPinScreen;)Z

    move-result v10

    if-eqz v10, :cond_5

    const v3, 0x7f0b017b

    .line 232
    .local v3, id:I
    :goto_2
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$500(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->clear()V

    .line 233
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$1100(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(I)V

    .line 234
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$1100(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$900(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mOldPin:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$500(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 231
    .end local v3           #id:I
    :cond_5
    const v3, 0x7f0b0164

    goto :goto_2

    .line 239
    :cond_6
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mBadPinError:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$1100(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 250
    .restart local v1       #error:I
    .restart local v4       #newPin1:Ljava/lang/String;
    .restart local v5       #newPin2:Ljava/lang/String;
    :pswitch_0
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$1200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->clear()V

    .line 251
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mNewPin2:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$1300(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->clear()V

    .line 252
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$900(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mNewPin1:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$1200(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->requestFocus()Z

    .line 254
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    invoke-virtual {v10}, Lcom/android/phone/ChangeIccPinScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 257
    .local v8, r:Landroid/content/res/Resources;
    const/4 v10, 0x1

    if-ne v1, v10, :cond_8

    .line 259
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$1000(Lcom/android/phone/ChangeIccPinScreen;)Z

    move-result v10

    if-eqz v10, :cond_7

    const v3, 0x7f0b017a

    .line 260
    .restart local v3       #id:I
    :goto_3
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 266
    .local v9, text:Ljava/lang/CharSequence;
    :goto_4
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mMismatchError:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$900(Lcom/android/phone/ChangeIccPinScreen;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 259
    .end local v3           #id:I
    .end local v9           #text:Ljava/lang/CharSequence;
    :cond_7
    const v3, 0x7f0b0163

    goto :goto_3

    .line 262
    :cond_8
    iget-object v10, p0, Lcom/android/phone/ChangeIccPinScreen$2;->this$0:Lcom/android/phone/ChangeIccPinScreen;

    #getter for: Lcom/android/phone/ChangeIccPinScreen;->mChangePin2:Z
    invoke-static {v10}, Lcom/android/phone/ChangeIccPinScreen;->access$1000(Lcom/android/phone/ChangeIccPinScreen;)Z

    move-result v10

    if-eqz v10, :cond_9

    const v3, 0x7f0b017b

    .line 263
    .restart local v3       #id:I
    :goto_5
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #text:Ljava/lang/CharSequence;
    goto :goto_4

    .line 262
    .end local v3           #id:I
    .end local v9           #text:Ljava/lang/CharSequence;
    :cond_9
    const v3, 0x7f0b0164

    goto :goto_5

    .line 287
    .end local v8           #r:Landroid/content/res/Resources;
    .restart local v0       #callBack:Landroid/os/Message;
    :cond_a
    invoke-interface {v2, v6, v4, v0}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 291
    :cond_b
    invoke-interface {v2, v6, v4, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
