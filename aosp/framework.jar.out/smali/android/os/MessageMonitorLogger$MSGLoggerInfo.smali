.class public Landroid/os/MessageMonitorLogger$MSGLoggerInfo;
.super Ljava/lang/Object;
.source "MessageMonitorLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageMonitorLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MSGLoggerInfo"
.end annotation


# instance fields
.field public msgLoggerName:Ljava/lang/String;

.field public msgLoggerPid:I

.field public msgLoggerTid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
