.class public Landroid/os/MessageMonitorLogger$MonitorMSGInfo;
.super Ljava/lang/Object;
.source "MessageMonitorLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageMonitorLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonitorMSGInfo"
.end annotation


# instance fields
.field executionTimeout:J

.field msg:Landroid/os/Message;

.field msgLoggerName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
