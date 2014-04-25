.class Lcom/android/phone/AutoRecordListActivity$3;
.super Ljava/lang/Object;
.source "AutoRecordListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoRecordListActivity;->showEditDialog(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutoRecordListActivity;

.field final synthetic val$id:I

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$nameET:Landroid/widget/EditText;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$numberET:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoRecordListActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/phone/AutoRecordListActivity$3;->this$0:Lcom/android/phone/AutoRecordListActivity;

    iput-object p2, p0, Lcom/android/phone/AutoRecordListActivity$3;->val$nameET:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/AutoRecordListActivity$3;->val$numberET:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/phone/AutoRecordListActivity$3;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/phone/AutoRecordListActivity$3;->val$number:Ljava/lang/String;

    iput p6, p0, Lcom/android/phone/AutoRecordListActivity$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 131
    iget-object v2, p0, Lcom/android/phone/AutoRecordListActivity$3;->val$nameET:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, nameAfterEdit:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/AutoRecordListActivity$3;->val$numberET:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, numberAfterEdit:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/AutoRecordListActivity$3;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/phone/AutoRecordListActivity$3;->val$number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/android/phone/AutoRecordListActivity$3;->this$0:Lcom/android/phone/AutoRecordListActivity;

    iget v3, p0, Lcom/android/phone/AutoRecordListActivity$3;->val$id:I

    #calls: Lcom/android/phone/AutoRecordListActivity;->updateRecordByEdit(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/phone/AutoRecordListActivity;->access$200(Lcom/android/phone/AutoRecordListActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/android/phone/AutoRecordListActivity$3;->this$0:Lcom/android/phone/AutoRecordListActivity;

    #calls: Lcom/android/phone/AutoRecordListActivity;->refreshList()V
    invoke-static {v2}, Lcom/android/phone/AutoRecordListActivity;->access$300(Lcom/android/phone/AutoRecordListActivity;)V

    .line 139
    :cond_2
    return-void
.end method
