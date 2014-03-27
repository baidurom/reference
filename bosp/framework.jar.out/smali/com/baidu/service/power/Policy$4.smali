.class Lcom/baidu/service/power/Policy$4;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$batteryInfo:Landroid/widget/RelativeLayout;

.field final synthetic val$hasResult:Z

.field final synthetic val$tipsView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/baidu/service/power/Policy;Landroid/widget/TextView;ZLandroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/baidu/service/power/Policy$4;->this$0:Lcom/baidu/service/power/Policy;

    iput-object p2, p0, Lcom/baidu/service/power/Policy$4;->val$tipsView:Landroid/widget/TextView;

    iput-boolean p3, p0, Lcom/baidu/service/power/Policy$4;->val$hasResult:Z

    iput-object p4, p0, Lcom/baidu/service/power/Policy$4;->val$batteryInfo:Landroid/widget/RelativeLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 381
    if-eqz p2, :cond_1

    .line 382
    iget-object v0, p0, Lcom/baidu/service/power/Policy$4;->val$tipsView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    iget-boolean v0, p0, Lcom/baidu/service/power/Policy$4;->val$hasResult:Z

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/baidu/service/power/Policy$4;->val$batteryInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/baidu/service/power/Policy$4;->val$tipsView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    iget-boolean v0, p0, Lcom/baidu/service/power/Policy$4;->val$hasResult:Z

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/baidu/service/power/Policy$4;->val$batteryInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
