.class Lcom/baidu/server/dp/DynamicPermAlertDialog$3;
.super Ljava/lang/Object;
.source "DynamicPermAlertDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 257
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$3;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "checkbox"
    .parameter "isChecked"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$3;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    #setter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->mIsRemembered:Z
    invoke-static {v0, p2}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$202(Lcom/baidu/server/dp/DynamicPermAlertDialog;Z)Z

    .line 262
    if-eqz p2, :cond_0

    .line 263
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$3;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    #getter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->mRememberTipsText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$300(Lcom/baidu/server/dp/DynamicPermAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$3;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    #getter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->mRememberTipsText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$300(Lcom/baidu/server/dp/DynamicPermAlertDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
