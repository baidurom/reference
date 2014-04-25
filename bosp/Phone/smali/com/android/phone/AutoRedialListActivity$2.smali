.class Lcom/android/phone/AutoRedialListActivity$2;
.super Ljava/lang/Object;
.source "AutoRedialListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoRedialListActivity;->showEditDialog(ILjava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutoRedialListActivity;

.field final synthetic val$cb1:Landroid/widget/CheckBox;

.field final synthetic val$repeatET:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoRedialListActivity;Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/phone/AutoRedialListActivity$2;->this$0:Lcom/android/phone/AutoRedialListActivity;

    iput-object p2, p0, Lcom/android/phone/AutoRedialListActivity$2;->val$repeatET:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/AutoRedialListActivity$2;->val$cb1:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/phone/AutoRedialListActivity$2;->val$repeatET:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$2;->val$cb1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/android/phone/AutoRedialListActivity$2;->val$repeatET:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$2;->val$cb1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 129
    return-void

    .line 127
    :cond_0
    const-string v0, "3"

    goto :goto_0

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
