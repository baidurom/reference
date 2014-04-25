.class Lcom/android/phone/WhiteListManuallyInputActivity$1;
.super Ljava/lang/Object;
.source "WhiteListManuallyInputActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/WhiteListManuallyInputActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/WhiteListManuallyInputActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/WhiteListManuallyInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/phone/WhiteListManuallyInputActivity$1;->this$0:Lcom/android/phone/WhiteListManuallyInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 63
    iget-object v2, p0, Lcom/android/phone/WhiteListManuallyInputActivity$1;->this$0:Lcom/android/phone/WhiteListManuallyInputActivity;

    #getter for: Lcom/android/phone/WhiteListManuallyInputActivity;->mName:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/WhiteListManuallyInputActivity;->access$000(Lcom/android/phone/WhiteListManuallyInputActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/WhiteListManuallyInputActivity$1;->this$0:Lcom/android/phone/WhiteListManuallyInputActivity;

    #getter for: Lcom/android/phone/WhiteListManuallyInputActivity;->mNumber:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/WhiteListManuallyInputActivity;->access$100(Lcom/android/phone/WhiteListManuallyInputActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, number:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/android/phone/WhiteListManuallyInputActivity$1;->this$0:Lcom/android/phone/WhiteListManuallyInputActivity;

    #getter for: Lcom/android/phone/WhiteListManuallyInputActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/WhiteListManuallyInputActivity;->access$200(Lcom/android/phone/WhiteListManuallyInputActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/WhiteListManuallyInputActivity$1;->this$0:Lcom/android/phone/WhiteListManuallyInputActivity;

    iget-object v3, v3, Lcom/android/phone/WhiteListManuallyInputActivity;->mSubscriberId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/WhiteListManuallyInputActivity$1;->this$0:Lcom/android/phone/WhiteListManuallyInputActivity;

    #getter for: Lcom/android/phone/WhiteListManuallyInputActivity;->mType:I
    invoke-static {v4}, Lcom/android/phone/WhiteListManuallyInputActivity;->access$300(Lcom/android/phone/WhiteListManuallyInputActivity;)I

    move-result v4

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/phone/BaiduPhoneUtil;->insertToWhiteList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/android/phone/WhiteListManuallyInputActivity$1;->this$0:Lcom/android/phone/WhiteListManuallyInputActivity;

    invoke-virtual {v2}, Lcom/android/phone/WhiteListManuallyInputActivity;->finish()V

    .line 69
    return-void
.end method
