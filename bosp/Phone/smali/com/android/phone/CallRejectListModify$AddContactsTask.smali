.class Lcom/android/phone/CallRejectListModify$AddContactsTask;
.super Landroid/os/AsyncTask;
.source "CallRejectListModify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallRejectListModify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddContactsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallRejectListModify;


# direct methods
.method constructor <init>(Lcom/android/phone/CallRejectListModify;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/CallRejectListModify$AddContactsTask;->this$0:Lcom/android/phone/CallRejectListModify;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5
    .parameter "params"

    .prologue
    .line 64
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 65
    .local v2, index:I
    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 66
    .local v3, size:I
    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/CallRejectListModify$AddContactsTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 67
    iget-object v4, p0, Lcom/android/phone/CallRejectListModify$AddContactsTask;->this$0:Lcom/android/phone/CallRejectListModify;

    #getter for: Lcom/android/phone/CallRejectListModify;->mCRLItemArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/CallRejectListModify;->access$000(Lcom/android/phone/CallRejectListModify;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallRejectListItem;

    .line 68
    .local v0, callrejectitem:Lcom/android/phone/CallRejectListItem;
    invoke-virtual {v0}, Lcom/android/phone/CallRejectListItem;->getIsChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    invoke-virtual {v0}, Lcom/android/phone/CallRejectListItem;->getId()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, id:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallRejectListModify$AddContactsTask;->this$0:Lcom/android/phone/CallRejectListModify;

    #getter for: Lcom/android/phone/CallRejectListModify;->mCRLItemArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/CallRejectListModify;->access$000(Lcom/android/phone/CallRejectListModify;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 71
    iget-object v4, p0, Lcom/android/phone/CallRejectListModify$AddContactsTask;->this$0:Lcom/android/phone/CallRejectListModify;

    #calls: Lcom/android/phone/CallRejectListModify;->isCurTypeVtAndVoice(Ljava/lang/String;)Z
    invoke-static {v4, v1}, Lcom/android/phone/CallRejectListModify;->access$100(Lcom/android/phone/CallRejectListModify;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    iget-object v4, p0, Lcom/android/phone/CallRejectListModify$AddContactsTask;->this$0:Lcom/android/phone/CallRejectListModify;

    #calls: Lcom/android/phone/CallRejectListModify;->updateRowById(Ljava/lang/String;)V
    invoke-static {v4, v1}, Lcom/android/phone/CallRejectListModify;->access$200(Lcom/android/phone/CallRejectListModify;Ljava/lang/String;)V

    .line 76
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 77
    goto :goto_0

    .line 74
    :cond_0
    iget-object v4, p0, Lcom/android/phone/CallRejectListModify$AddContactsTask;->this$0:Lcom/android/phone/CallRejectListModify;

    #calls: Lcom/android/phone/CallRejectListModify;->deleteRowById(Ljava/lang/String;)V
    invoke-static {v4, v1}, Lcom/android/phone/CallRejectListModify;->access$300(Lcom/android/phone/CallRejectListModify;Ljava/lang/String;)V

    goto :goto_1

    .line 78
    .end local v1           #id:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v0           #callrejectitem:Lcom/android/phone/CallRejectListItem;
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallRejectListModify$AddContactsTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "size"

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListModify$AddContactsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/phone/CallRejectListModify$AddContactsTask;->this$0:Lcom/android/phone/CallRejectListModify;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallRejectListModify;->dismissDialog(I)V

    .line 93
    iget-object v0, p0, Lcom/android/phone/CallRejectListModify$AddContactsTask;->this$0:Lcom/android/phone/CallRejectListModify;

    #getter for: Lcom/android/phone/CallRejectListModify;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/phone/CallRejectListModify;->access$400(Lcom/android/phone/CallRejectListModify;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 94
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/phone/CallRejectListModify$AddContactsTask;->this$0:Lcom/android/phone/CallRejectListModify;

    invoke-virtual {v0}, Lcom/android/phone/CallRejectListModify;->finish()V

    .line 98
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallRejectListModify$AddContactsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 60
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallRejectListModify$AddContactsTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 87
    return-void
.end method
