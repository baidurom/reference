.class Lcom/baidu/service/power/Policy$6;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic val$pm:Lcom/baidu/service/power/PowerModeManager;


# direct methods
.method constructor <init>(Lcom/baidu/service/power/Policy;Lcom/baidu/service/power/PowerModeManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/baidu/service/power/Policy$6;->this$0:Lcom/baidu/service/power/Policy;

    iput-object p2, p0, Lcom/baidu/service/power/Policy$6;->val$pm:Lcom/baidu/service/power/PowerModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/baidu/service/power/Policy$6;->val$pm:Lcom/baidu/service/power/PowerModeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/service/power/PowerModeManager;->setDialog(Landroid/app/AlertDialog;)V

    .line 410
    return-void
.end method
