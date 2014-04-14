.class Lcom/baidu/service/power/Policy$5;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$d:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/baidu/service/power/Policy;Landroid/content/Context;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/baidu/service/power/Policy$5;->this$0:Lcom/baidu/service/power/Policy;

    iput-object p2, p0, Lcom/baidu/service/power/Policy$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/service/power/Policy$5;->val$d:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 400
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 401
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fuelgauge.PowerUsageSummary"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 403
    iget-object v1, p0, Lcom/baidu/service/power/Policy$5;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 404
    iget-object v1, p0, Lcom/baidu/service/power/Policy$5;->val$d:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 405
    return-void
.end method
