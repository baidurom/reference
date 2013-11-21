.class Lcom/baidu/service/power/Policy$2;
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

.field final synthetic val$pm:Lcom/baidu/service/power/PowerModeManager;

.field final synthetic val$policyOk:Lcom/baidu/service/power/Policy;


# direct methods
.method constructor <init>(Lcom/baidu/service/power/Policy;Landroid/widget/CheckBox;Landroid/content/Context;Lcom/baidu/service/power/PowerModeManager;Lcom/baidu/service/power/Policy;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/baidu/service/power/Policy$2;->this$0:Lcom/baidu/service/power/Policy;

    iput-object p2, p0, Lcom/baidu/service/power/Policy$2;->val$box:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/baidu/service/power/Policy$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/baidu/service/power/Policy$2;->val$pm:Lcom/baidu/service/power/PowerModeManager;

    iput-object p5, p0, Lcom/baidu/service/power/Policy$2;->val$policyOk:Lcom/baidu/service/power/Policy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x2

    .line 331
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.smartpm.ACTION_LOW_BATTERY_ANSWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/baidu/service/power/Policy$2;->val$box:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    iget-object v1, p0, Lcom/baidu/service/power/Policy$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "battery_low_prompt"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    iget-object v1, p0, Lcom/baidu/service/power/Policy$2;->this$0:Lcom/baidu/service/power/Policy;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/baidu/service/power/Policy;->mIsActive:Z

    .line 337
    iget-object v1, p0, Lcom/baidu/service/power/Policy$2;->val$pm:Lcom/baidu/service/power/PowerModeManager;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/baidu/service/power/Policy$2;->val$pm:Lcom/baidu/service/power/PowerModeManager;

    invoke-virtual {v1}, Lcom/baidu/service/power/PowerModeManager;->storePolicys()V

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/baidu/service/power/Policy$2;->this$0:Lcom/baidu/service/power/Policy;

    iget-object v2, p0, Lcom/baidu/service/power/Policy$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/service/power/Policy;->unapplyPolicy(Landroid/content/Context;)V

    .line 340
    iget-object v1, p0, Lcom/baidu/service/power/Policy$2;->val$policyOk:Lcom/baidu/service/power/Policy;

    iget-object v2, p0, Lcom/baidu/service/power/Policy$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/service/power/Policy;->unapplyPolicy(Landroid/content/Context;)V

    .line 344
    :goto_0
    iget-object v1, p0, Lcom/baidu/service/power/Policy$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 345
    return-void

    .line 342
    :cond_1
    const-string/jumbo v1, "result"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method
