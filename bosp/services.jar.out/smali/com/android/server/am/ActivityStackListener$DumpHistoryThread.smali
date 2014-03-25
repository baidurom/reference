.class public Lcom/android/server/am/ActivityStackListener$DumpHistoryThread;
.super Ljava/lang/Object;
.source "ActivityStackListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DumpHistoryThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackListener;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackListener;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/android/server/am/ActivityStackListener$DumpHistoryThread;->this$0:Lcom/android/server/am/ActivityStackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackListener$DumpHistoryThread;->this$0:Lcom/android/server/am/ActivityStackListener;

    #getter for: Lcom/android/server/am/ActivityStackListener;->isRun:Z
    invoke-static {v0}, Lcom/android/server/am/ActivityStackListener;->access$000(Lcom/android/server/am/ActivityStackListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/android/server/am/ActivityStackListener$DumpHistoryThread;->this$0:Lcom/android/server/am/ActivityStackListener;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackListener;->dumpHistory()V

    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method
