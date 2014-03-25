.class Landroid/widget/MagnifierController$1;
.super Ljava/lang/Object;
.source "MagnifierController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MagnifierController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MagnifierController;


# direct methods
.method constructor <init>(Landroid/widget/MagnifierController;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Landroid/widget/MagnifierController$1;->this$0:Landroid/widget/MagnifierController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/widget/MagnifierController$1;->this$0:Landroid/widget/MagnifierController;

    invoke-virtual {v0}, Landroid/widget/MagnifierController;->dismiss()V

    .line 71
    return-void
.end method
