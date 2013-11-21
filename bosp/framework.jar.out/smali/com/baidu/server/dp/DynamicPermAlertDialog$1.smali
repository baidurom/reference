.class Lcom/baidu/server/dp/DynamicPermAlertDialog$1;
.super Ljava/lang/Object;
.source "DynamicPermAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/dp/DynamicPermAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;


# direct methods
.method constructor <init>(Lcom/baidu/server/dp/DynamicPermAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$1;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$1;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    #getter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$000(Lcom/baidu/server/dp/DynamicPermAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$1;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    #getter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$000(Lcom/baidu/server/dp/DynamicPermAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$1;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 238
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$1;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->mInterrupt:Z
    invoke-static {v0, v1}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$102(Lcom/baidu/server/dp/DynamicPermAlertDialog;Z)Z

    .line 239
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$1;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    invoke-virtual {v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->dismiss()V

    .line 241
    :cond_0
    return-void
.end method
