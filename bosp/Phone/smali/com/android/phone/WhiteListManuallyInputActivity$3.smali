.class Lcom/android/phone/WhiteListManuallyInputActivity$3;
.super Ljava/lang/Object;
.source "WhiteListManuallyInputActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/WhiteListManuallyInputActivity;->setupView()V
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
    .line 86
    iput-object p1, p0, Lcom/android/phone/WhiteListManuallyInputActivity$3;->this$0:Lcom/android/phone/WhiteListManuallyInputActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 90
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 95
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/phone/WhiteListManuallyInputActivity$3;->this$0:Lcom/android/phone/WhiteListManuallyInputActivity;

    #getter for: Lcom/android/phone/WhiteListManuallyInputActivity;->done:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/WhiteListManuallyInputActivity;->access$400(Lcom/android/phone/WhiteListManuallyInputActivity;)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 100
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
