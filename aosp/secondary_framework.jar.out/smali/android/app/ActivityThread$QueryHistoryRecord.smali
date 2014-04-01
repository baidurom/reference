.class final Landroid/app/ActivityThread$QueryHistoryRecord;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHistoryRecord"
.end annotation


# instance fields
.field public mStackTrace:Ljava/lang/Throwable;

.field public mUri:Ljava/lang/String;

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "stackTrace"

    .prologue
    .line 4710
    iput-object p1, p0, Landroid/app/ActivityThread$QueryHistoryRecord;->this$0:Landroid/app/ActivityThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4711
    iput-object p2, p0, Landroid/app/ActivityThread$QueryHistoryRecord;->mUri:Ljava/lang/String;

    .line 4712
    iput-object p3, p0, Landroid/app/ActivityThread$QueryHistoryRecord;->mStackTrace:Ljava/lang/Throwable;

    .line 4713
    return-void
.end method
