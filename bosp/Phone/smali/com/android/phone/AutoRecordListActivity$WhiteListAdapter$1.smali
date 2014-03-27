.class Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter$1;
.super Ljava/lang/Object;
.source "AutoRecordListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter$1;->this$1:Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter;

    iput p2, p0, Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 438
    iget-object v1, p0, Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter$1;->this$1:Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter;

    iget-object v2, v1, Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter;->this$0:Lcom/android/phone/AutoRecordListActivity;

    iget-object v1, p0, Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter$1;->this$1:Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter;

    iget-object v1, v1, Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter;->this$0:Lcom/android/phone/AutoRecordListActivity;

    #getter for: Lcom/android/phone/AutoRecordListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v1}, Lcom/android/phone/AutoRecordListActivity;->access$000(Lcom/android/phone/AutoRecordListActivity;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v1

    iget v3, p0, Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter$1;->val$position:I

    invoke-virtual {v1, v3}, Landroid/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #calls: Lcom/android/phone/AutoRecordListActivity;->deleteFromWhiteList(I)Z
    invoke-static {v2, v1}, Lcom/android/phone/AutoRecordListActivity;->access$800(Lcom/android/phone/AutoRecordListActivity;I)Z

    move-result v0

    .line 439
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter$1;->this$1:Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter;

    iget-object v1, v1, Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter;->this$0:Lcom/android/phone/AutoRecordListActivity;

    #calls: Lcom/android/phone/AutoRecordListActivity;->refreshList()V
    invoke-static {v1}, Lcom/android/phone/AutoRecordListActivity;->access$300(Lcom/android/phone/AutoRecordListActivity;)V

    .line 442
    :cond_0
    return-void
.end method
