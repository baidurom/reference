.class Lcom/android/server/dreams/DreamManagerService$4;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    #getter for: Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;
    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$200(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/dreams/DreamController;->stopDream()V

    .line 354
    return-void
.end method
