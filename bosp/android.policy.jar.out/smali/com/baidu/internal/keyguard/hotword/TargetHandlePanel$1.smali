.class Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;
.super Ljava/lang/Object;
.source "TargetHandlePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    iput-object p2, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mStateIdle:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$000(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->setState(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$State;)V

    .line 201
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mHandleLastX:I
    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$100(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 202
    iget-object v0, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel$1;->this$0:Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;

    #getter for: Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->mHandleLastY:I
    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;->access$200(Lcom/baidu/internal/keyguard/hotword/TargetHandlePanel;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 203
    return-void
.end method
