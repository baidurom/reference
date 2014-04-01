.class final Lcom/android/server/PowerManagerService$SyncKeyguard;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SyncKeyguard"
.end annotation


# instance fields
.field public mKeyguardDoneDraw:Z

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/server/PowerManagerService$SyncKeyguard;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService$SyncKeyguard;->mKeyguardDoneDraw:Z

    .line 499
    return-void
.end method
