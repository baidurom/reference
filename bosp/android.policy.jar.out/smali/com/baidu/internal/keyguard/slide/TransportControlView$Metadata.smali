.class Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;
.super Ljava/lang/Object;
.source "TransportControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/TransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Metadata"
.end annotation


# instance fields
.field private albumTitle:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private sessionId:I

.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

.field private trackTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/TransportControlView;)V
    .locals 1
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->this$0:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->sessionId:I

    return-void
.end method

.method static synthetic access$1100(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->sessionId:I

    return v0
.end method

.method static synthetic access$1102(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 403
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->sessionId:I

    return p1
.end method

.method static synthetic access$1200(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->artist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->artist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->trackTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->albumTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$502(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metadata[artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " trackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
