.class Lcom/baidu/service/power/Policy$1;
.super Landroid/os/AsyncTask;
.source "Policy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/service/power/Policy;->doAction(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/service/power/Policy;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/baidu/service/power/Policy;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/baidu/service/power/Policy$1;->this$0:Lcom/baidu/service/power/Policy;

    iput-object p2, p0, Lcom/baidu/service/power/Policy$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/baidu/service/power/Policy$1;->val$value:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 227
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/service/power/Policy$1;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 1
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/baidu/service/power/Policy$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/service/power/PowerStatsUtil;->getTopApp(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 227
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/service/power/Policy$1;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "SmartPowerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPostExecute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/baidu/service/power/Policy$1;->this$0:Lcom/baidu/service/power/Policy;

    iget-object v1, p0, Lcom/baidu/service/power/Policy$1;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/baidu/service/power/Policy$1;->val$value:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/service/power/Policy;->showAlertDialog(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 238
    iget-object v0, p0, Lcom/baidu/service/power/Policy$1;->this$0:Lcom/baidu/service/power/Policy;

    iget-object v1, p0, Lcom/baidu/service/power/Policy$1;->val$context:Landroid/content/Context;

    #calls: Lcom/baidu/service/power/Policy;->playLowBatterySound(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/baidu/service/power/Policy;->access$000(Lcom/baidu/service/power/Policy;Landroid/content/Context;)V

    .line 239
    return-void
.end method
