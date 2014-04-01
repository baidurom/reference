.class public Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;
.super Ljava/lang/Object;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationResult"
.end annotation


# instance fields
.field public mTTFF:I

.field public maccuracy:F

.field public maltitude:D

.field public mbearing:F

.field public mlatitude:D

.field public mlongitude:D

.field public mspeed:F

.field public mtimestamp:J

.field final synthetic this$0:Lcom/mediatek/agps/MtkAgpsManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;DDDFFFJI)V
    .locals 0
    .parameter
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"
    .parameter "ttff"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-wide p2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mlatitude:D

    .line 251
    iput-wide p4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mlongitude:D

    .line 252
    iput-wide p6, p0, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->maltitude:D

    .line 253
    iput p8, p0, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mspeed:F

    .line 254
    iput p9, p0, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mbearing:F

    .line 255
    iput p10, p0, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->maccuracy:F

    .line 256
    iput-wide p11, p0, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mtimestamp:J

    .line 257
    iput p13, p0, Lcom/mediatek/agps/MtkAgpsManagerService$LocationResult;->mTTFF:I

    .line 258
    return-void
.end method
