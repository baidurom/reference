.class Lcom/android/phone/UnlockPUKLock$1;
.super Ljava/lang/Object;
.source "UnlockPUKLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UnlockPUKLock;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPUKLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUKLock;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/phone/UnlockPUKLock$1;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 183
    iget-object v2, p0, Lcom/android/phone/UnlockPUKLock$1;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v2, v2, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/android/phone/UnlockPUKLock$1;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v2, v2, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 185
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 186
    .local v1, len:I
    if-lez v1, :cond_0

    .line 187
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/android/phone/UnlockPUKLock$1;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$1;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v3, v3, Lcom/android/phone/UnlockPUKLock;->mPwdDisplay:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    .line 190
    const-string v2, "UnlockPUKLock "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mbackspace][onClickListener][strPwd)]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/UnlockPUKLock$1;->this$0:Lcom/android/phone/UnlockPUKLock;

    iget-object v4, v4, Lcom/android/phone/UnlockPUKLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_1
    return-void
.end method
