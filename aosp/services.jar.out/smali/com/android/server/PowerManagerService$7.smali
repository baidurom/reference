.class Lcom/android/server/PowerManagerService$7;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1736
    iput-object p1, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/server/PowerManagerService$7;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->forceReenableScreen()V
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4300(Lcom/android/server/PowerManagerService;)V

    .line 1739
    return-void
.end method
