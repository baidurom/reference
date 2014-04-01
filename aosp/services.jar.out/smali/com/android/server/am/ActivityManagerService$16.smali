.class Lcom/android/server/am/ActivityManagerService$16;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->preDumpStackTraces(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$firstPids:Ljava/util/ArrayList;

.field final synthetic val$lastPids:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 15828
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$16;->val$firstPids:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$16;->val$lastPids:Landroid/util/SparseArray;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 15833
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$16;->val$firstPids:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$16;->val$lastPids:Landroid/util/SparseArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->preDumpStackTraces(ZLjava/util/ArrayList;Landroid/util/SparseArray;)Ljava/io/File;

    .line 15836
    return-void
.end method
