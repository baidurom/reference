.class Lcom/android/phone/AutoRedialListActivity$4;
.super Ljava/lang/Object;
.source "AutoRedialListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$cb2:Landroid/widget/CheckBox;

.field final synthetic val$id:I

.field final synthetic val$nameET:Landroid/widget/EditText;

.field final synthetic val$numberET:Landroid/widget/EditText;

.field final synthetic val$repeatET:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoRedialListActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/phone/AutoRedialListActivity$4;->this$0:Lcom/android/phone/AutoRedialListActivity;

    iput-object p2, p0, Lcom/android/phone/AutoRedialListActivity$4;->val$nameET:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/AutoRedialListActivity$4;->val$numberET:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/phone/AutoRedialListActivity$4;->val$repeatET:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/android/phone/AutoRedialListActivity$4;->val$cb1:Landroid/widget/CheckBox;

    iput-object p6, p0, Lcom/android/phone/AutoRedialListActivity$4;->val$cb2:Landroid/widget/CheckBox;

    iput p7, p0, Lcom/android/phone/AutoRedialListActivity$4;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$4;->val$nameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, nameAfterEdit:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$4;->val$numberET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, numberAfterEdit:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$4;->val$repeatET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, rtStr:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .end local v9           #rtStr:Ljava/lang/String;
    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 148
    .local v8, repeatTime:I
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$4;->val$cb1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    .line 149
    .local v6, bRuc:Z
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$4;->val$cb2:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    .line 151
    .local v7, bSo:Z
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$4;->this$0:Lcom/android/phone/AutoRedialListActivity;

    iget v1, p0, Lcom/android/phone/AutoRedialListActivity$4;->val$id:I

    if-eqz v6, :cond_1

    const/4 v4, -0x1

    :goto_1
    if-eqz v7, :cond_2

    const/4 v5, 0x1

    :goto_2
    #calls: Lcom/android/phone/AutoRedialListActivity;->updateRecordByEdit(ILjava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v0 .. v5}, Lcom/android/phone/AutoRedialListActivity;->access$200(Lcom/android/phone/AutoRedialListActivity;ILjava/lang/String;Ljava/lang/String;II)V

    .line 152
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$4;->this$0:Lcom/android/phone/AutoRedialListActivity;

    #calls: Lcom/android/phone/AutoRedialListActivity;->refreshList()V
    invoke-static {v0}, Lcom/android/phone/AutoRedialListActivity;->access$300(Lcom/android/phone/AutoRedialListActivity;)V

    .line 154
    return-void

    .line 147
    .end local v6           #bRuc:Z
    .end local v7           #bSo:Z
    .end local v8           #repeatTime:I
    .restart local v9       #rtStr:Ljava/lang/String;
    :cond_0
    const-string v9, "0"

    goto :goto_0

    .end local v9           #rtStr:Ljava/lang/String;
    .restart local v6       #bRuc:Z
    .restart local v7       #bSo:Z
    .restart local v8       #repeatTime:I
    :cond_1
    move v4, v8

    .line 151
    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method
