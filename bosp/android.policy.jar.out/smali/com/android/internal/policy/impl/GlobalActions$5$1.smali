.class Lcom/android/internal/policy/impl/GlobalActions$5$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$5;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$5;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$5;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$5$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$5$1$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$5$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    return-void
.end method
