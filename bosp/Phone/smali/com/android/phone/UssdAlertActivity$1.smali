.class Lcom/android/phone/UssdAlertActivity$1;
.super Ljava/lang/Object;
.source "UssdAlertActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UssdAlertActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UssdAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/UssdAlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/phone/UssdAlertActivity$1;->this$0:Lcom/android/phone/UssdAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 90
    if-nez p1, :cond_0

    move v0, v1

    .line 91
    .local v0, count:I
    :goto_0
    if-lez v0, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/phone/UssdAlertActivity$1;->this$0:Lcom/android/phone/UssdAlertActivity;

    #getter for: Lcom/android/phone/UssdAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;
    invoke-static {v1}, Lcom/android/phone/UssdAlertActivity;->access$000(Lcom/android/phone/UssdAlertActivity;)Lcom/android/internal/app/AlertController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    :goto_1
    return-void

    .line 90
    .end local v0           #count:I
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0

    .line 94
    .restart local v0       #count:I
    :cond_1
    iget-object v2, p0, Lcom/android/phone/UssdAlertActivity$1;->this$0:Lcom/android/phone/UssdAlertActivity;

    #getter for: Lcom/android/phone/UssdAlertActivity;->mAlert:Lcom/android/internal/app/AlertController;
    invoke-static {v2}, Lcom/android/phone/UssdAlertActivity;->access$100(Lcom/android/phone/UssdAlertActivity;)Lcom/android/internal/app/AlertController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 84
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 87
    return-void
.end method
