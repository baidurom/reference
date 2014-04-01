.class Lcom/mediatek/agps/MtkAgpsManagerService$2;
.super Ljava/lang/Object;
.source "MtkAgpsManagerService.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/agps/MtkAgpsManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onFirstFix(I)V
    .locals 3
    .parameter "ttff"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFirstFix ttff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private onGpsStarted()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string/jumbo v1, "onGpsStarted"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method private onGpsStopped()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$2;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string/jumbo v1, "onGpsStopped"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 288
    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 0
    .parameter "event"

    .prologue
    .line 292
    return-void
.end method
