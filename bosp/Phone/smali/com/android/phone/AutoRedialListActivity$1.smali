.class Lcom/android/phone/AutoRedialListActivity$1;
.super Ljava/lang/Object;
.source "AutoRedialListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoRedialListActivity;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutoRedialListActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoRedialListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/phone/AutoRedialListActivity$1;->this$0:Lcom/android/phone/AutoRedialListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$1;->this$0:Lcom/android/phone/AutoRedialListActivity;

    #getter for: Lcom/android/phone/AutoRedialListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v0}, Lcom/android/phone/AutoRedialListActivity;->access$000(Lcom/android/phone/AutoRedialListActivity;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 96
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 97
    .local v1, _id:I
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, name:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, phoneNumber:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 100
    .local v4, repeatCount:I
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 101
    .local v5, speakeron:I
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$1;->this$0:Lcom/android/phone/AutoRedialListActivity;

    #calls: Lcom/android/phone/AutoRedialListActivity;->showEditDialog(ILjava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v0 .. v5}, Lcom/android/phone/AutoRedialListActivity;->access$100(Lcom/android/phone/AutoRedialListActivity;ILjava/lang/String;Ljava/lang/String;II)V

    .line 102
    return-void
.end method
