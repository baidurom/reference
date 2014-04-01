.class Lcom/android/server/AlarmManagerService$AlarmPair;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlarmPair"
.end annotation


# instance fields
.field mPendingIntent:Landroid/app/PendingIntent;

.field mTriggerTime:J

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;JLandroid/app/PendingIntent;)V
    .locals 0
    .parameter
    .parameter "triggertime"
    .parameter "pendingintent"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmPair;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$AlarmPair;->mTriggerTime:J

    .line 123
    iput-object p4, p0, Lcom/android/server/AlarmManagerService$AlarmPair;->mPendingIntent:Landroid/app/PendingIntent;

    .line 124
    return-void
.end method
