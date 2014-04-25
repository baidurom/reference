.class Lcom/android/phone/CallRejectListSetting$AddContactsTask;
.super Landroid/os/AsyncTask;
.source "CallRejectListSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallRejectListSetting;
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
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallRejectListSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallRejectListSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/phone/CallRejectListSetting$AddContactsTask;->this$0:Lcom/android/phone/CallRejectListSetting;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallRejectListSetting$AddContactsTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/phone/CallRejectListSetting$AddContactsTask;->this$0:Lcom/android/phone/CallRejectListSetting;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/CallRejectListSetting$AddContactsTask;->this$0:Lcom/android/phone/CallRejectListSetting;

    #getter for: Lcom/android/phone/CallRejectListSetting;->mResultIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/phone/CallRejectListSetting;->access$000(Lcom/android/phone/CallRejectListSetting;)Landroid/content/Intent;

    move-result-object v3

    #calls: Lcom/android/phone/CallRejectListSetting;->updataCallback(IILandroid/content/Intent;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/CallRejectListSetting;->access$100(Lcom/android/phone/CallRejectListSetting;IILandroid/content/Intent;)V

    .line 155
    const-string v0, ""

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallRejectListSetting$AddContactsTask;->onCancelled(Ljava/lang/String;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallRejectListSetting$AddContactsTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/phone/CallRejectListSetting$AddContactsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/phone/CallRejectListSetting$AddContactsTask;->this$0:Lcom/android/phone/CallRejectListSetting;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallRejectListSetting;->dismissDialog(I)V

    .line 167
    iget-object v0, p0, Lcom/android/phone/CallRejectListSetting$AddContactsTask;->this$0:Lcom/android/phone/CallRejectListSetting;

    #calls: Lcom/android/phone/CallRejectListSetting;->showNumbers()V
    invoke-static {v0}, Lcom/android/phone/CallRejectListSetting;->access$200(Lcom/android/phone/CallRejectListSetting;)V

    .line 169
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/phone/CallRejectListSetting$AddContactsTask;->this$0:Lcom/android/phone/CallRejectListSetting;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallRejectListSetting;->showDialog(I)V

    .line 148
    iget-object v0, p0, Lcom/android/phone/CallRejectListSetting$AddContactsTask;->this$0:Lcom/android/phone/CallRejectListSetting;

    invoke-virtual {v0}, Lcom/android/phone/CallRejectListSetting;->invalidateOptionsMenu()V

    .line 149
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 150
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 143
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallRejectListSetting$AddContactsTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
