.class public Lcom/android/server/am/ANRManager$BinderWatchdog$TransactionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager$BinderWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TransactionInfo"
.end annotation


# instance fields
.field protected atime:Ljava/lang/String;

.field protected direction:Ljava/lang/String;

.field protected ktime:Ljava/lang/String;

.field protected rcv_pid:Ljava/lang/String;

.field protected rcv_tid:Ljava/lang/String;

.field protected snd_pid:Ljava/lang/String;

.field protected snd_tid:Ljava/lang/String;

.field protected spent_time:J


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
