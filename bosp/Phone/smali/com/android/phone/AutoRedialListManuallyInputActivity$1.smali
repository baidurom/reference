.class Lcom/android/phone/AutoRedialListManuallyInputActivity$1;
.super Ljava/lang/Object;
.source "AutoRedialListManuallyInputActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoRedialListManuallyInputActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoRedialListManuallyInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity$1;->this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 51
    iget-object v6, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity$1;->this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;

    #getter for: Lcom/android/phone/AutoRedialListManuallyInputActivity;->mName:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->access$000(Lcom/android/phone/AutoRedialListManuallyInputActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity$1;->this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;

    #getter for: Lcom/android/phone/AutoRedialListManuallyInputActivity;->mNumber:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->access$100(Lcom/android/phone/AutoRedialListManuallyInputActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, number:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 54
    :cond_0
    iget-object v6, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity$1;->this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;

    #getter for: Lcom/android/phone/AutoRedialListManuallyInputActivity;->mRepeatTime:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->access$200(Lcom/android/phone/AutoRedialListManuallyInputActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, rtStr:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .end local v5           #rtStr:Ljava/lang/String;
    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 56
    .local v4, repeatTime:I
    iget-object v6, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity$1;->this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;

    #getter for: Lcom/android/phone/AutoRedialListManuallyInputActivity;->mRUC:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->access$300(Lcom/android/phone/AutoRedialListManuallyInputActivity;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 57
    .local v0, bRuc:Z
    iget-object v6, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity$1;->this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;

    #getter for: Lcom/android/phone/AutoRedialListManuallyInputActivity;->mASO:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->access$400(Lcom/android/phone/AutoRedialListManuallyInputActivity;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 58
    .local v1, bSo:Z
    iget-object v6, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity$1;->this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;

    #getter for: Lcom/android/phone/AutoRedialListManuallyInputActivity;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->access$500(Lcom/android/phone/AutoRedialListManuallyInputActivity;)Landroid/content/Context;

    move-result-object v7

    if-eqz v0, :cond_1

    const/4 v4, -0x1

    .end local v4           #repeatTime:I
    :cond_1
    if-eqz v1, :cond_4

    const/4 v6, 0x1

    :goto_1
    invoke-static {v7, v2, v3, v4, v6}, Lcom/android/phone/AutoRedialListActivity;->insertToADList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 60
    .end local v0           #bRuc:Z
    .end local v1           #bSo:Z
    :cond_2
    iget-object v6, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity$1;->this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;

    invoke-virtual {v6}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->finish()V

    .line 61
    return-void

    .line 55
    .restart local v5       #rtStr:Ljava/lang/String;
    :cond_3
    const-string v5, "0"

    goto :goto_0

    .line 58
    .end local v5           #rtStr:Ljava/lang/String;
    .restart local v0       #bRuc:Z
    .restart local v1       #bSo:Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method
