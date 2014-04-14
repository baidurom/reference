.class Lcom/baidu/service/power/Policy$3;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/service/power/Policy;->showAlertDialog(Landroid/content/Context;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/service/power/Policy;

.field final synthetic val$box:Landroid/widget/CheckBox;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/baidu/service/power/Policy;Landroid/widget/CheckBox;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/baidu/service/power/Policy$3;->this$0:Lcom/baidu/service/power/Policy;

    iput-object p2, p0, Lcom/baidu/service/power/Policy$3;->val$box:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/baidu/service/power/Policy$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 350
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.smartpm.ACTION_LOW_BATTERY_ANSWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/baidu/service/power/Policy$3;->val$box:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    iget-object v1, p0, Lcom/baidu/service/power/Policy$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "battery_low_prompt"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 358
    :goto_0
    iget-object v1, p0, Lcom/baidu/service/power/Policy$3;->this$0:Lcom/baidu/service/power/Policy;

    iget-object v2, p0, Lcom/baidu/service/power/Policy$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/service/power/Policy;->enterBatteryLow(Landroid/content/Context;)V

    .line 359
    iget-object v1, p0, Lcom/baidu/service/power/Policy$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 360
    return-void

    .line 356
    :cond_0
    const-string/jumbo v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method
