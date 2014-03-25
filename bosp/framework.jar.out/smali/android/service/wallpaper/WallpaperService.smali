.class public abstract Landroid/service/wallpaper/WallpaperService;
.super Landroid/app/Service;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;,
        Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;,
        Landroid/service/wallpaper/WallpaperService$Engine;,
        Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    }
.end annotation


# static fields
.field private static final ACTION_BOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_PREBOOT_IPO"

.field private static final BUILD_CHARACTERISTICS:Ljava/lang/String; = "ro.build.characteristics"

.field static final DEBUG:Z = true

.field private static final DO_ATTACH:I = 0xa

.field private static final DO_DETACH:I = 0x14

.field private static final DO_SET_DESIRED_SIZE:I = 0x1e

.field private static final IMAGEWALLPAPER:Ljava/lang/String; = "com.android.systemui.ImageWallpaper"

.field private static final MSG_TOUCH_EVENT:I = 0x2738

.field private static final MSG_UPDATE_SURFACE:I = 0x2710

.field private static final MSG_VISIBILITY_CHANGED:I = 0x271a

.field private static final MSG_WALLPAPER_COMMAND:I = 0x2729

.field private static final MSG_WALLPAPER_OFFSETS:I = 0x2724

.field private static final MSG_WINDOW_MOVED:I = 0x2733

.field private static final MSG_WINDOW_RESIZED:I = 0x272e

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.wallpaper.WallpaperService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.service.wallpaper"

.field private static final TABLET:Ljava/lang/String; = "tablet"

.field static final TAG:Ljava/lang/String; = "WallpaperService"


# instance fields
.field private final mActiveEngines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/wallpaper/WallpaperService$Engine;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackLooper:Landroid/os/Looper;

.field private mCurrentWallpaper:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Landroid/service/wallpaper/WallpaperService$1;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$1;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1166
    return-void
.end method

.method static synthetic access$000(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/wallpaper/WallpaperService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;->isTabletBuild()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/service/wallpaper/WallpaperService;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mCallbackLooper:Landroid/os/Looper;

    return-object v0
.end method

.method private isTabletBuild()Z
    .locals 2

    .prologue
    .line 135
    const-string/jumbo v0, "tablet"

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "out"
    .parameter "args"

    .prologue
    .line 1249
    const-string v2, "State of wallpaper "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1250
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1251
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 1252
    .local v0, engine:Landroid/service/wallpaper/WallpaperService$Engine;
    const-string v2, "  Engine "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1253
    const-string v2, "    "

    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1255
    .end local v0           #engine:Landroid/service/wallpaper/WallpaperService$Engine;
    :cond_0
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 1223
    new-instance v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;

    invoke-direct {v0, p0, p0}, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;-><init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 1186
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1188
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1189
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1191
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;->isTabletBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1192
    const-string v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1195
    :cond_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/service/wallpaper/WallpaperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1204
    return-void
.end method

.method public abstract onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1208
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1209
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1210
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1211
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->detach()V

    .line 1210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1213
    :cond_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1214
    return-void
.end method

.method public setCallbackLooper(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 1236
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService;->mCallbackLooper:Landroid/os/Looper;

    .line 1237
    return-void
.end method
