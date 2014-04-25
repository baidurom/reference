.class public Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;
.super Ljava/lang/Object;
.source "VTInCallScreenFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VTInCallScreenFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VTConnectionStarttime"
.end annotation


# instance fields
.field public mConnection:Lcom/android/internal/telephony/Connection;

.field public mStartDate:J

.field public mStarttime:J

.field final synthetic this$0:Lcom/android/phone/VTInCallScreenFlags;


# direct methods
.method public constructor <init>(Lcom/android/phone/VTInCallScreenFlags;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->this$0:Lcom/android/phone/VTInCallScreenFlags;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->reset()V

    .line 100
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 103
    const-string v0, "VTConnectionStarttime"

    const-string v1, "reset..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 105
    iput-wide v2, p0, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    .line 106
    iput-wide v2, p0, Lcom/android/phone/VTInCallScreenFlags$VTConnectionStarttime;->mStartDate:J

    .line 107
    return-void
.end method
