.class Landroid/location/LocationManager$GpsStatusListenerTransport;
.super Landroid/location/IGpsStatusListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsStatusListenerTransport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;
    }
.end annotation


# static fields
.field private static final NMEA_RECEIVED:I = 0x3e8


# instance fields
.field private final mGpsHandler:Landroid/os/Handler;

.field private final mListener:Landroid/location/GpsStatus$Listener;

.field private mNmeaBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;",
            ">;"
        }
    .end annotation
.end field

.field private final mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    .line 1380
    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGpsStatusListener$Stub;-><init>()V

    .line 1449
    new-instance v0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;

    invoke-direct {v0, p0}, Landroid/location/LocationManager$GpsStatusListenerTransport$1;-><init>(Landroid/location/LocationManager$GpsStatusListenerTransport;)V

    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    .line 1381
    iput-object p2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    .line 1382
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 1383
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    .line 1385
    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGpsStatusListener$Stub;-><init>()V

    .line 1449
    new-instance v0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;

    invoke-direct {v0, p0}, Landroid/location/LocationManager$GpsStatusListenerTransport$1;-><init>(Landroid/location/LocationManager$GpsStatusListenerTransport;)V

    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    .line 1386
    iput-object p2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 1387
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    .line 1388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    .line 1389
    return-void
.end method

.method static synthetic access$300(Landroid/location/LocationManager$GpsStatusListenerTransport;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1361
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/location/LocationManager$GpsStatusListenerTransport;)Landroid/location/GpsStatus$NmeaListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1361
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/location/LocationManager$GpsStatusListenerTransport;)Landroid/location/GpsStatus$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1361
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    return-object v0
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 2
    .parameter "ttff"

    .prologue
    .line 1411
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    if-eqz v1, :cond_0

    .line 1412
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #getter for: Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;
    invoke-static {v1}, Landroid/location/LocationManager;->access$200(Landroid/location/LocationManager;)Landroid/location/GpsStatus;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/location/GpsStatus;->setTimeToFirstFix(I)V

    .line 1413
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1414
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1415
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1417
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGpsStarted()V
    .locals 2

    .prologue
    .line 1393
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    if-eqz v1, :cond_0

    .line 1394
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1395
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1396
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1398
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGpsStopped()V
    .locals 2

    .prologue
    .line 1402
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    if-eqz v1, :cond_0

    .line 1403
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1404
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1405
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1407
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 5
    .parameter "timestamp"
    .parameter "nmea"

    .prologue
    const/16 v4, 0x3e8

    .line 1437
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    if-eqz v1, :cond_0

    .line 1438
    iget-object v2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1439
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    new-instance v3, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;-><init>(Landroid/location/LocationManager$GpsStatusListenerTransport;JLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1440
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1441
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1442
    .local v0, msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1444
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1445
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1447
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 1440
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSvStatusChanged(I[I[F[F[FIII)V
    .locals 10
    .parameter "svCount"
    .parameter "prns"
    .parameter "snrs"
    .parameter "elevations"
    .parameter "azimuths"
    .parameter "ephemerisMask"
    .parameter "almanacMask"
    .parameter "usedInFixMask"

    .prologue
    .line 1423
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #getter for: Landroid/location/LocationManager;->mGpsStatus:Landroid/location/GpsStatus;
    invoke-static {v0}, Landroid/location/LocationManager;->access$200(Landroid/location/LocationManager;)Landroid/location/GpsStatus;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/location/GpsStatus;->setStatus(I[I[F[F[FIII)V

    .line 1427
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 1428
    .local v9, msg:Landroid/os/Message;
    const/4 v0, 0x4

    iput v0, v9, Landroid/os/Message;->what:I

    .line 1430
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1431
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1433
    .end local v9           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
