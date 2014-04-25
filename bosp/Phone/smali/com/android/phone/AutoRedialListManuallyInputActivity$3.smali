.class Lcom/android/phone/AutoRedialListManuallyInputActivity$3;
.super Ljava/lang/Object;
.source "AutoRedialListManuallyInputActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoRedialListManuallyInputActivity;->setupView()V
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
    .line 93
    iput-object p1, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity$3;->this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity$3;->this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;

    #getter for: Lcom/android/phone/AutoRedialListManuallyInputActivity;->mRepeatTime:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->access$200(Lcom/android/phone/AutoRedialListManuallyInputActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity$3;->this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;

    #getter for: Lcom/android/phone/AutoRedialListManuallyInputActivity;->mRUC:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->access$300(Lcom/android/phone/AutoRedialListManuallyInputActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity$3;->this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;

    #getter for: Lcom/android/phone/AutoRedialListManuallyInputActivity;->mRepeatTime:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->access$200(Lcom/android/phone/AutoRedialListManuallyInputActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity$3;->this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;

    #getter for: Lcom/android/phone/AutoRedialListManuallyInputActivity;->mRUC:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->access$300(Lcom/android/phone/AutoRedialListManuallyInputActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 100
    return-void

    .line 98
    :cond_0
    const-string v0, "3"

    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
