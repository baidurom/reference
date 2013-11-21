.class Lcom/baidu/server/dp/DynamicPermAlertDialog$4;
.super Ljava/lang/Object;
.source "DynamicPermAlertDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/dp/DynamicPermAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field displayText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;


# direct methods
.method constructor <init>(Lcom/baidu/server/dp/DynamicPermAlertDialog;)V
    .locals 1
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->displayText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 280
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    #getter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->mInterrupt:Z
    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$100(Lcom/baidu/server/dp/DynamicPermAlertDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    #getter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->mCountdown:I
    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$400(Lcom/baidu/server/dp/DynamicPermAlertDialog;)I

    move-result v0

    if-lez v0, :cond_2

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    #getter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->mDeynBtnInitialVal:Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$500(Lcom/baidu/server/dp/DynamicPermAlertDialog;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    #getter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->mCountdown:I
    invoke-static {v1}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$400(Lcom/baidu/server/dp/DynamicPermAlertDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->displayText:Ljava/lang/CharSequence;

    .line 286
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    #getter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->mDenyBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$600(Lcom/baidu/server/dp/DynamicPermAlertDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->displayText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    #getter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$700(Lcom/baidu/server/dp/DynamicPermAlertDialog;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$410(Lcom/baidu/server/dp/DynamicPermAlertDialog;)I

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    #getter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->mCountdown:I
    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$400(Lcom/baidu/server/dp/DynamicPermAlertDialog;)I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 294
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    #setter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->mInterrupt:Z
    invoke-static {v0, v3}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$102(Lcom/baidu/server/dp/DynamicPermAlertDialog;Z)Z

    .line 296
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    #getter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$000(Lcom/baidu/server/dp/DynamicPermAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    #setter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->mIsTimeout:Z
    invoke-static {v0, v3}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$802(Lcom/baidu/server/dp/DynamicPermAlertDialog;Z)Z

    .line 298
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    #getter for: Lcom/baidu/server/dp/DynamicPermAlertDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->access$000(Lcom/baidu/server/dp/DynamicPermAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 299
    iget-object v0, p0, Lcom/baidu/server/dp/DynamicPermAlertDialog$4;->this$0:Lcom/baidu/server/dp/DynamicPermAlertDialog;

    invoke-virtual {v0}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->dismiss()V

    goto :goto_0
.end method
