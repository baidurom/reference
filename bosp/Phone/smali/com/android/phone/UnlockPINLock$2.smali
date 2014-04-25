.class Lcom/android/phone/UnlockPINLock$2;
.super Ljava/lang/Object;
.source "UnlockPINLock.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UnlockPINLock;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPINLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPINLock;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/phone/UnlockPINLock$2;->this$0:Lcom/android/phone/UnlockPINLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$2;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v0, v0, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "UnlockPINLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mbackspace][onLongClickListener][strPwd)]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/UnlockPINLock;->strPwd:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/android/phone/UnlockPINLock$2;->this$0:Lcom/android/phone/UnlockPINLock;

    iget-object v0, v0, Lcom/android/phone/UnlockPINLock;->mPwdDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
