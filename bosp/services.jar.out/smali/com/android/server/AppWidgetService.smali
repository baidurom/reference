.class Lcom/android/server/AppWidgetService;
.super Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppWidgetService$ServiceConnectionProxy;,
        Lcom/android/server/AppWidgetService$AppWidgetId;,
        Lcom/android/server/AppWidgetService$Host;,
        Lcom/android/server/AppWidgetService$Provider;
    }
.end annotation


# static fields
.field private static final ACTION_BOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final MIN_UPDATE_PERIOD:I = 0x1b7740

.field private static final SETTINGS_FILENAME:Ljava/lang/String; = "appwidgets.xml"

.field private static final TAG:Ljava/lang/String; = "AppWidgetService"


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field final mAppWidgetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$AppWidgetId;",
            ">;"
        }
    .end annotation
.end field

.field private final mBoundRemoteViewsServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mDeletedHost:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$Host;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$Provider;",
            ">;"
        }
    .end annotation
.end field

.field mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$Host;",
            ">;"
        }
    .end annotation
.end field

.field mInstalledProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$Provider;",
            ">;"
        }
    .end annotation
.end field

.field mLocale:Ljava/util/Locale;

.field mNextAppWidgetId:I

.field mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mStateLoaded:Z

.field nCurrentHostIndex:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    .line 173
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mDeletedProviders:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mDeletedHosts:Ljava/util/ArrayList;

    .line 1316
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/AppWidgetService;->nCurrentHostIndex:I

    .line 1317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mDeletedHost:Ljava/util/List;

    .line 1473
    new-instance v0, Lcom/android/server/AppWidgetService$3;

    invoke-direct {v0, p0}, Lcom/android/server/AppWidgetService$3;-><init>(Lcom/android/server/AppWidgetService;)V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    iput-object p1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 186
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AppWidgetService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    return-void
.end method

.method private decrementAppWidgetServiceRefCount(I)V
    .locals 4
    .parameter "appWidgetId"

    .prologue
    .line 650
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 652
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/Intent$FilterComparison;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 653
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$FilterComparison;

    .line 654
    .local v2, key:Landroid/content/Intent$FilterComparison;
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 655
    .local v0, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 658
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 659
    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/AppWidgetService;->destroyRemoteViewsService(Landroid/content/Intent;)V

    .line 660
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 664
    .end local v0           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2           #key:Landroid/content/Intent$FilterComparison;
    :cond_1
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 605
    new-instance v0, Lcom/android/server/AppWidgetService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AppWidgetService$1;-><init>(Lcom/android/server/AppWidgetService;Landroid/content/Intent;)V

    .line 627
    .local v0, conn:Landroid/content/ServiceConnection;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 629
    .local v1, token:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 633
    return-void

    .line 631
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private dumpAppWidgetId(Lcom/android/server/AppWidgetService$AppWidgetId;ILjava/io/PrintWriter;)V
    .locals 1
    .parameter "id"
    .parameter "index"
    .parameter "pw"

    .prologue
    .line 267
    const-string v0, "  ["

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] id="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    iget v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 269
    const-string v0, "    hostId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v0, v0, Lcom/android/server/AppWidgetService$Host;->hostId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 271
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 272
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v0, v0, Lcom/android/server/AppWidgetService$Host;->uid:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 273
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "    provider="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    :cond_0
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    if-eqz v0, :cond_1

    .line 278
    const-string v0, "    host.callbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 280
    :cond_1
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    .line 281
    const-string v0, "    views="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 283
    :cond_2
    return-void
.end method

.method private dumpHost(Lcom/android/server/AppWidgetService$Host;ILjava/io/PrintWriter;)V
    .locals 1
    .parameter "host"
    .parameter "index"
    .parameter "pw"

    .prologue
    .line 257
    const-string v0, "  ["

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] hostId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    iget v0, p1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 259
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 260
    iget v0, p1, Lcom/android/server/AppWidgetService$Host;->uid:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x3a

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 261
    const-string v0, "    callbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 262
    const-string v0, "    instances.size="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 263
    const-string v0, " zombie="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 264
    return-void
.end method

.method private dumpProvider(Lcom/android/server/AppWidgetService$Provider;ILjava/io/PrintWriter;)V
    .locals 2
    .parameter "p"
    .parameter "index"
    .parameter "pw"

    .prologue
    .line 237
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 238
    .local v0, info:Landroid/appwidget/AppWidgetProviderInfo;
    const-string v1, "  ["

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "] provider "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    const/16 v1, 0x3a

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 241
    const-string v1, "    min=("

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 242
    const-string v1, "x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 243
    const-string v1, ")   minResize=("

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 244
    const-string v1, "x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 245
    const-string v1, ") updatePeriodMillis="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 247
    const-string v1, " resizeMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 249
    const-string v1, " autoAdvanceViewId="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 251
    const-string v1, " initialLayout=#"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    const-string v1, " zombie="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 254
    return-void
.end method

.method private ensureStateLoadedLocked()V
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/server/AppWidgetService;->mStateLoaded:Z

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->loadAppWidgetList()V

    .line 231
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->loadStateLocked()V

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppWidgetService;->mStateLoaded:Z

    .line 234
    :cond_0
    return-void
.end method

.method static getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I
    .locals 4
    .parameter "p"

    .prologue
    .line 1072
    iget-object v3, p0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1073
    .local v2, instancesSize:I
    new-array v0, v2, [I

    .line 1074
    .local v0, appWidgetIds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1075
    iget-object v3, p0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    iget v3, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    aput v3, v0, v1

    .line 1074
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1077
    :cond_0
    return-object v0
.end method

.method private incrementAppWidgetServiceRefCount(ILandroid/content/Intent$FilterComparison;)V
    .locals 2
    .parameter "appWidgetId"
    .parameter "fc"

    .prologue
    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, appWidgetIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appWidgetIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 644
    .restart local v0       #appWidgetIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 645
    return-void

    .line 641
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #appWidgetIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 642
    .restart local v0       #appWidgetIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetService$Provider;
    .locals 19
    .parameter "component"
    .parameter "ri"

    .prologue
    .line 1093
    const/4 v9, 0x0

    .line 1095
    .local v9, p:Lcom/android/server/AppWidgetService$Provider;
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1096
    .local v3, activityInfo:Landroid/content/pm/ActivityInfo;
    const/4 v11, 0x0

    .line 1098
    .local v11, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    const-string v17, "android.appwidget.provider"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 1100
    if-nez v11, :cond_1

    .line 1101
    const-string v16, "AppWidgetService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "No android.appwidget.provider meta-data for AppWidget provider \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x27

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    const/4 v10, 0x0

    .line 1180
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1182
    :cond_0
    :goto_0
    return-object v10

    .line 1106
    :cond_1
    :try_start_1
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 1110
    .local v4, attrs:Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    .local v14, type:I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v14, v0, :cond_3

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_2

    .line 1114
    :cond_3
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1115
    .local v8, nodeName:Ljava/lang/String;
    const-string v16, "appwidget-provider"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1116
    const-string v16, "AppWidgetService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Meta-data does not start with appwidget-provider tag for AppWidget provider \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x27

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1118
    const/4 v10, 0x0

    .line 1180
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 1121
    :cond_4
    :try_start_2
    new-instance v10, Lcom/android/server/AppWidgetService$Provider;

    invoke-direct {v10}, Lcom/android/server/AppWidgetService$Provider;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1122
    .end local v9           #p:Lcom/android/server/AppWidgetService$Provider;
    .local v10, p:Lcom/android/server/AppWidgetService$Provider;
    :try_start_3
    new-instance v7, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v7}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v7, v10, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1123
    .local v7, info:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p1

    iput-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1124
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v10, Lcom/android/server/AppWidgetService$Provider;->uid:I

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    .line 1129
    .local v12, res:Landroid/content/res/Resources;
    sget-object v16, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    move-object/from16 v0, v16

    invoke-virtual {v12, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 1135
    .local v13, sa:Landroid/content/res/TypedArray;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1137
    .local v15, value:Landroid/util/TypedValue;
    if-eqz v15, :cond_7

    iget v0, v15, Landroid/util/TypedValue;->data:I

    move/from16 v16, v0

    :goto_1
    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 1138
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1139
    if-eqz v15, :cond_8

    iget v0, v15, Landroid/util/TypedValue;->data:I

    move/from16 v16, v0

    :goto_2
    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 1140
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1142
    if-eqz v15, :cond_9

    iget v0, v15, Landroid/util/TypedValue;->data:I

    move/from16 v16, v0

    :goto_3
    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 1143
    const/16 v16, 0x9

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1145
    if-eqz v15, :cond_a

    iget v0, v15, Landroid/util/TypedValue;->data:I

    move/from16 v16, v0

    :goto_4
    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 1147
    const/16 v16, 0x2

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 1149
    const/16 v16, 0x3

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 1151
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1153
    .local v5, className:Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 1154
    new-instance v16, Landroid/content/ComponentName;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iput-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 1156
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 1157
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v16

    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 1158
    const/16 v16, 0x5

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 1160
    const/16 v16, 0x6

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 1162
    const/16 v16, 0x7

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 1166
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 1168
    sget-object v16, Lcom/mediatek/internal/R$styleable;->MTKAppWidgetProviderInfo:[I

    move-object/from16 v0, v16

    invoke-virtual {v12, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1170
    .local v2, a:Landroid/content/res/TypedArray;
    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    move/from16 v0, v16

    iput-boolean v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->hasUsedCustomerView:Z

    .line 1171
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 1172
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1180
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    move-object v9, v10

    .line 1182
    .end local v10           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v9       #p:Lcom/android/server/AppWidgetService$Provider;
    goto/16 :goto_0

    .line 1137
    .end local v2           #a:Landroid/content/res/TypedArray;
    .end local v5           #className:Ljava/lang/String;
    .end local v9           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v10       #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1139
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1142
    :cond_9
    :try_start_4
    iget v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    move/from16 v16, v0

    goto/16 :goto_3

    .line 1145
    :cond_a
    iget v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move/from16 v16, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 1173
    .end local v4           #attrs:Landroid/util/AttributeSet;
    .end local v7           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v8           #nodeName:Ljava/lang/String;
    .end local v10           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v12           #res:Landroid/content/res/Resources;
    .end local v13           #sa:Landroid/content/res/TypedArray;
    .end local v14           #type:I
    .end local v15           #value:Landroid/util/TypedValue;
    .restart local v9       #p:Lcom/android/server/AppWidgetService$Provider;
    :catch_0
    move-exception v6

    .line 1177
    .local v6, e:Ljava/lang/Exception;
    :goto_5
    :try_start_5
    const-string v16, "AppWidgetService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "XML parsing failed for AppWidget provider \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x27

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1178
    const/4 v10, 0x0

    .line 1180
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    :goto_6
    if-eqz v11, :cond_b

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_b
    throw v16

    .end local v9           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v4       #attrs:Landroid/util/AttributeSet;
    .restart local v8       #nodeName:Ljava/lang/String;
    .restart local v10       #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v14       #type:I
    :catchall_1
    move-exception v16

    move-object v9, v10

    .end local v10           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v9       #p:Lcom/android/server/AppWidgetService$Provider;
    goto :goto_6

    .line 1173
    .end local v9           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v10       #p:Lcom/android/server/AppWidgetService$Provider;
    :catch_1
    move-exception v6

    move-object v9, v10

    .end local v10           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v9       #p:Lcom/android/server/AppWidgetService$Provider;
    goto :goto_5
.end method

.method private unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 583
    iget v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    .line 585
    .local v0, appWidgetId:I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 587
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 588
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 589
    .local v3, key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 590
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;

    .line 592
    .local v1, conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;->disconnect()V

    .line 593
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 594
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 600
    .end local v1           #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .end local v3           #key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->decrementAppWidgetServiceRefCount(I)V

    .line 601
    return-void
.end method


# virtual methods
.method addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .locals 5
    .parameter "ri"

    .prologue
    const/4 v1, 0x0

    .line 991
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return v1

    .line 994
    :cond_1
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 997
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1}, Lcom/android/server/AppWidgetService;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v0

    .line 999
    .local v0, p:Lcom/android/server/AppWidgetService$Provider;
    if-eqz v0, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    const/4 v1, 0x1

    goto :goto_0
.end method

.method addProvidersForPackageLocked(Ljava/lang/String;)V
    .locals 8
    .parameter "pkgName"

    .prologue
    .line 1560
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1561
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1562
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1565
    .local v2, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 1566
    .local v0, N:I
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 1567
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1568
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1569
    .local v1, ai:Landroid/content/pm/ActivityInfo;
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 1566
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1565
    .end local v0           #N:I
    .end local v1           #ai:Landroid/content/pm/ActivityInfo;
    .end local v3           #i:I
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 1572
    .restart local v0       #N:I
    .restart local v1       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v3       #i:I
    .restart local v5       #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1573
    invoke-virtual {p0, v5}, Lcom/android/server/AppWidgetService;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    goto :goto_2

    .line 1576
    .end local v1           #ai:Landroid/content/pm/ActivityInfo;
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_3
    return-void
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .locals 6
    .parameter "packageName"
    .parameter "hostId"

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->enforceCallingUid(Ljava/lang/String;)I

    move-result v1

    .line 334
    .local v1, callingUid:I
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 335
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 336
    iget v0, p0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    .line 338
    .local v0, appWidgetId:I
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/AppWidgetService;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetService$Host;

    move-result-object v2

    .line 340
    .local v2, host:Lcom/android/server/AppWidgetService$Host;
    new-instance v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    invoke-direct {v3}, Lcom/android/server/AppWidgetService$AppWidgetId;-><init>()V

    .line 341
    .local v3, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    iput v0, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    .line 342
    iput-object v2, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 344
    iget-object v4, v2, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 349
    monitor-exit v5

    return v0

    .line 350
    .end local v0           #appWidgetId:I
    .end local v2           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v3           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;)V
    .locals 10
    .parameter "appWidgetId"
    .parameter "provider"

    .prologue
    const/4 v9, 0x1

    .line 454
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BIND_APPWIDGET"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindGagetId appWidgetId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " provider="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 459
    .local v1, ident:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 460
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 461
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 462
    .local v0, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-nez v0, :cond_0

    .line 463
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "bad appWidgetId"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 495
    .end local v0           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 497
    :catchall_1
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 465
    .restart local v0       #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_0
    :try_start_3
    iget-object v5, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v5, :cond_1

    .line 466
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appWidgetId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " already bound to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v8, v8, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 469
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v4

    .line 470
    .local v4, p:Lcom/android/server/AppWidgetService$Provider;
    if-nez v4, :cond_2

    .line 471
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not a appwidget provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 473
    :cond_2
    iget-boolean v5, v4, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-eqz v5, :cond_3

    .line 474
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t bind to a 3rd party provider in safe mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 478
    :cond_3
    iput-object v4, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 479
    iget-object v5, v4, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v5, v4, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 481
    .local v3, instancesSize:I
    if-ne v3, v9, :cond_4

    .line 483
    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetService;->sendEnableIntentLocked(Lcom/android/server/AppWidgetService$Provider;)V

    .line 490
    :cond_4
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v7, 0x0

    aput p1, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/server/AppWidgetService;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 493
    invoke-static {v4}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/AppWidgetService;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 494
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 495
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 497
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 499
    return-void
.end method

.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 15
    .parameter "appWidgetId"
    .parameter "intent"
    .parameter "connection"

    .prologue
    .line 503
    iget-object v12, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v12

    .line 504
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 505
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v6

    .line 506
    .local v6, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-nez v6, :cond_0

    .line 507
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v13, "bad appWidgetId"

    invoke-direct {v11, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 550
    .end local v6           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 509
    .restart local v6       #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 511
    .local v1, componentName:Landroid/content/ComponentName;
    :try_start_2
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/16 v13, 0x1000

    invoke-virtual {v11, v1, v13}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    .line 513
    .local v8, si:Landroid/content/pm/ServiceInfo;
    const-string v11, "android.permission.BIND_REMOTEVIEWS"

    iget-object v13, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 514
    new-instance v11, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Selected service does not require android.permission.BIND_REMOTEVIEWS: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 518
    .end local v8           #si:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v4

    .line 519
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown component "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 525
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8       #si:Landroid/content/pm/ServiceInfo;
    :cond_1
    const/4 v2, 0x0

    .line 526
    .local v2, conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    new-instance v5, Landroid/content/Intent$FilterComparison;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 527
    .local v5, fc:Landroid/content/Intent$FilterComparison;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    .line 528
    .local v7, key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 529
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    check-cast v2, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;

    .line 530
    .restart local v2       #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    invoke-virtual {v2}, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;->disconnect()V

    .line 531
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 532
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v3, v2

    .line 537
    .end local v2           #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .local v3, conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v9

    .line 539
    .local v9, token:J
    :try_start_4
    new-instance v2, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;

    move-object/from16 v0, p3

    invoke-direct {v2, v7, v0}, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;-><init>(Landroid/util/Pair;Landroid/os/IBinder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 540
    .end local v3           #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .restart local v2       #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    :try_start_5
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v2, v13}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 541
    iget-object v11, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 543
    :try_start_6
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 549
    move/from16 v0, p1

    invoke-direct {p0, v0, v5}, Lcom/android/server/AppWidgetService;->incrementAppWidgetServiceRefCount(ILandroid/content/Intent$FilterComparison;)V

    .line 550
    monitor-exit v12

    .line 551
    return-void

    .line 543
    .end local v2           #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .restart local v3       #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3           #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .restart local v2       #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v11

    goto :goto_0
.end method

.method canAccessAppWidgetId(Lcom/android/server/AppWidgetService$AppWidgetId;I)Z
    .locals 3
    .parameter "id"
    .parameter "callingUid"

    .prologue
    const/4 v0, 0x1

    .line 903
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v1, v1, Lcom/android/server/AppWidgetService$Host;->uid:I

    if-ne v1, p2, :cond_1

    .line 917
    :cond_0
    :goto_0
    return v0

    .line 907
    :cond_1
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget v1, v1, Lcom/android/server/AppWidgetService$Provider;->uid:I

    if-eq v1, p2, :cond_0

    .line 911
    :cond_2
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_APPWIDGET"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 441
    iget-object v2, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 443
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 445
    .local v0, token:J
    :try_start_0
    iget-object v2, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 449
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 451
    .end local v0           #token:J
    :cond_0
    return-void

    .line 447
    .restart local v0       #token:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public deleteAllHosts()V
    .locals 7

    .prologue
    .line 377
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v6

    .line 378
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 379
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v1

    .line 380
    .local v1, callingUid:I
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 381
    .local v0, N:I
    const/4 v2, 0x0

    .line 382
    .local v2, changed:Z
    add-int/lit8 v4, v0, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_1

    .line 383
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Host;

    .line 384
    .local v3, host:Lcom/android/server/AppWidgetService$Host;
    iget v5, v3, Lcom/android/server/AppWidgetService$Host;->uid:I

    if-ne v5, v1, :cond_0

    .line 385
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 386
    const/4 v2, 0x1

    .line 382
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 389
    .end local v3           #host:Lcom/android/server/AppWidgetService$Host;
    :cond_1
    if-eqz v2, :cond_2

    .line 390
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 392
    :cond_2
    monitor-exit v6

    .line 393
    return-void

    .line 392
    .end local v0           #N:I
    .end local v1           #callingUid:I
    .end local v2           #changed:Z
    .end local v4           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public deleteAppWidgetId(I)V
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 354
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 355
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 357
    .local v0, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 361
    :cond_0
    monitor-exit v2

    .line 362
    return-void

    .line 361
    .end local v0           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method deleteAppWidgetLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetService;->unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V

    .line 412
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 413
    .local v0, host:Lcom/android/server/AppWidgetService$Host;
    iget-object v3, v0, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 416
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 418
    iget-object v2, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 419
    .local v2, p:Lcom/android/server/AppWidgetService$Provider;
    if-eqz v2, :cond_0

    .line 420
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 421
    iget-boolean v3, v2, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v3, :cond_0

    .line 423
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 425
    const-string v3, "appWidgetId"

    iget v4, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 427
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 429
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 432
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 434
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 438
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public deleteHost(I)V
    .locals 4
    .parameter "hostId"

    .prologue
    .line 365
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 366
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 367
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v0

    .line 368
    .local v0, callingUid:I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/AppWidgetService;->lookupHostLocked(II)Lcom/android/server/AppWidgetService$Host;

    move-result-object v1

    .line 369
    .local v1, host:Lcom/android/server/AppWidgetService$Host;
    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetService;->deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 373
    :cond_0
    monitor-exit v3

    .line 374
    return-void

    .line 373
    .end local v0           #callingUid:I
    .end local v1           #host:Lcom/android/server/AppWidgetService$Host;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V
    .locals 4
    .parameter "host"

    .prologue
    .line 396
    iget-object v3, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 397
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 398
    iget-object v3, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 399
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V

    .line 397
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 401
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_0
    iget-object v3, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 402
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 403
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 406
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 287
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 296
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 297
    .local v0, N:I
    const-string v2, "Providers:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 299
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Provider;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetService;->dumpProvider(Lcom/android/server/AppWidgetService$Provider;ILjava/io/PrintWriter;)V

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 302
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 303
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    const-string v2, "AppWidgetIds:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 306
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$AppWidgetId;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetService;->dumpAppWidgetId(Lcom/android/server/AppWidgetService$AppWidgetId;ILjava/io/PrintWriter;)V

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 309
    :cond_2
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 310
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    const-string v2, "Hosts:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 313
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Host;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetService;->dumpHost(Lcom/android/server/AppWidgetService$Host;ILjava/io/PrintWriter;)V

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 316
    :cond_3
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 317
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    const-string v2, "Deleted Providers:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 320
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Provider;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetService;->dumpProvider(Lcom/android/server/AppWidgetService$Provider;ILjava/io/PrintWriter;)V

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 323
    :cond_4
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 324
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    const-string v2, "Deleted Hosts:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_5

    .line 327
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mDeletedHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Host;

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/AppWidgetService;->dumpHost(Lcom/android/server/AppWidgetService$Host;ILjava/io/PrintWriter;)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 329
    :cond_5
    monitor-exit v3

    goto/16 :goto_0

    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method enforceCallingUid(Ljava/lang/String;)I
    .locals 6
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1194
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v0

    .line 1197
    .local v0, callingUid:I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->getUidForPackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1202
    .local v2, packageUid:I
    if-eq v0, v2, :cond_0

    .line 1203
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1198
    .end local v2           #packageUid:I
    :catch_0
    move-exception v1

    .line 1199
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1206
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #packageUid:I
    :cond_0
    return v0
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .locals 4
    .parameter "provider"

    .prologue
    .line 1081
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1082
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 1083
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v0

    .line 1084
    .local v0, p:Lcom/android/server/AppWidgetService$Provider;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v1

    iget v3, v0, Lcom/android/server/AppWidgetService$Provider;->uid:I

    if-ne v1, v3, :cond_0

    .line 1085
    invoke-static {v0}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v1

    monitor-exit v2

    .line 1087
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [I

    monitor-exit v2

    goto :goto_0

    .line 1089
    .end local v0           #p:Lcom/android/server/AppWidgetService$Provider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 667
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 668
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 669
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 670
    .local v0, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v1, :cond_0

    .line 671
    iget-object v1, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    monitor-exit v2

    .line 673
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 674
    .end local v0           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppWidgetViews(I)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "appWidgetId"

    .prologue
    .line 678
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 679
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 680
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 681
    .local v0, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-eqz v0, :cond_0

    .line 682
    iget-object v1, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    monitor-exit v2

    .line 684
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 685
    .end local v0           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInstalledProviders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 690
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 691
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 692
    .local v0, N:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 693
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 694
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Provider;

    .line 695
    .local v2, p:Lcom/android/server/AppWidgetService$Provider;
    iget-boolean v4, v2, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v4, :cond_0

    .line 696
    iget-object v4, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 699
    .end local v2           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_1
    monitor-exit v5

    return-object v3

    .line 700
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method getUidForPackage(Ljava/lang/String;)I
    .locals 3
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1186
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1187
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 1188
    :cond_0
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v1

    .line 1190
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    return v1
.end method

.method loadAppWidgetList()V
    .locals 7

    .prologue
    .line 977
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 979
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 980
    .local v3, intent:Landroid/content/Intent;
    const/16 v6, 0x80

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 983
    .local v1, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 984
    .local v0, N:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 985
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 986
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v5}, Lcom/android/server/AppWidgetService;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 984
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 983
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 988
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_1
    return-void
.end method

.method loadStateLocked()V
    .locals 6

    .prologue
    .line 1227
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->savedStateFile()Lcom/android/internal/os/AtomicFile;

    move-result-object v1

    .line 1229
    .local v1, file:Lcom/android/internal/os/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 1230
    .local v2, stream:Ljava/io/FileInputStream;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->readStateFromFileLocked(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1232
    if-eqz v2, :cond_0

    .line 1234
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1239
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 1243
    .end local v2           #stream:Ljava/io/FileInputStream;
    :goto_1
    return-void

    .line 1235
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 1236
    .local v0, e:Ljava/io/IOException;
    const-string v3, "AppWidgetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close state FileInputStream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1240
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 1241
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "AppWidgetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;
    .locals 5
    .parameter "appWidgetId"

    .prologue
    .line 921
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v1

    .line 922
    .local v1, callingUid:I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 923
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 924
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 925
    .local v3, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    iget v4, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    if-ne v4, p1, :cond_0

    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->canAccessAppWidgetId(Lcom/android/server/AppWidgetService$AppWidgetId;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 929
    .end local v3           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :goto_1
    return-object v3

    .line 923
    .restart local v3       #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 929
    .end local v3           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method lookupHostLocked(II)Lcom/android/server/AppWidgetService$Host;
    .locals 4
    .parameter "uid"
    .parameter "hostId"

    .prologue
    .line 944
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 945
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 946
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 947
    .local v1, h:Lcom/android/server/AppWidgetService$Host;
    iget v3, v1, Lcom/android/server/AppWidgetService$Host;->uid:I

    if-ne v3, p1, :cond_0

    iget v3, v1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    if-ne v3, p2, :cond_0

    .line 951
    .end local v1           #h:Lcom/android/server/AppWidgetService$Host;
    :goto_1
    return-object v1

    .line 945
    .restart local v1       #h:Lcom/android/server/AppWidgetService$Host;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 951
    .end local v1           #h:Lcom/android/server/AppWidgetService$Host;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetService$Host;
    .locals 5
    .parameter "uid"
    .parameter "packageName"
    .parameter "hostId"

    .prologue
    .line 955
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 956
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 957
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 958
    .local v1, h:Lcom/android/server/AppWidgetService$Host;
    iget v4, v1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    if-ne v4, p3, :cond_0

    iget-object v4, v1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 967
    .end local v1           #h:Lcom/android/server/AppWidgetService$Host;
    :goto_1
    return-object v1

    .line 956
    .restart local v1       #h:Lcom/android/server/AppWidgetService$Host;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 962
    .end local v1           #h:Lcom/android/server/AppWidgetService$Host;
    :cond_1
    new-instance v2, Lcom/android/server/AppWidgetService$Host;

    invoke-direct {v2}, Lcom/android/server/AppWidgetService$Host;-><init>()V

    .line 963
    .local v2, host:Lcom/android/server/AppWidgetService$Host;
    iput-object p2, v2, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    .line 964
    iput p1, v2, Lcom/android/server/AppWidgetService$Host;->uid:I

    .line 965
    iput p3, v2, Lcom/android/server/AppWidgetService$Host;->hostId:I

    .line 966
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 967
    goto :goto_1
.end method

.method lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;
    .locals 4
    .parameter "provider"

    .prologue
    .line 933
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 934
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 935
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Provider;

    .line 936
    .local v2, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 940
    .end local v2           #p:Lcom/android/server/AppWidgetService$Provider;
    :goto_1
    return-object v2

    .line 934
    .restart local v2       #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 940
    .end local v2           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public notifyAppWidgetViewDataChanged([II)V
    .locals 5
    .parameter "appWidgetIds"
    .parameter "viewId"

    .prologue
    .line 740
    if-nez p1, :cond_1

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    array-length v3, p1

    if-eqz v3, :cond_0

    .line 746
    array-length v0, p1

    .line 748
    .local v0, N:I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 749
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 750
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 751
    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v2

    .line 752
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/AppWidgetService;->notifyAppWidgetViewDataChangedInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;I)V

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 754
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method notifyAppWidgetViewDataChangedInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;I)V
    .locals 10
    .parameter "id"
    .parameter "viewId"

    .prologue
    .line 815
    if-eqz p1, :cond_2

    iget-object v8, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v8, :cond_2

    iget-object v8, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-boolean v8, v8, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v8, :cond_2

    iget-object v8, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-boolean v8, v8, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    if-nez v8, :cond_2

    .line 817
    iget-object v8, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v8, v8, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v8, :cond_0

    .line 820
    :try_start_0
    iget-object v8, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v8, v8, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v9, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-interface {v8, v9, p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->viewDataChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :cond_0
    :goto_0
    iget-object v8, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v8, v8, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v8, :cond_2

    .line 831
    iget-object v8, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 832
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent$FilterComparison;

    .line 833
    .local v4, key:Landroid/content/Intent$FilterComparison;
    iget-object v8, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashSet;

    iget v9, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 834
    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 836
    .local v3, intent:Landroid/content/Intent;
    new-instance v0, Lcom/android/server/AppWidgetService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppWidgetService$2;-><init>(Lcom/android/server/AppWidgetService;)V

    .line 857
    .local v0, conn:Landroid/content/ServiceConnection;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 859
    .local v6, token:J
    :try_start_1
    iget-object v8, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-virtual {v8, v3, v0, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 861
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 821
    .end local v0           #conn:Landroid/content/ServiceConnection;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #key:Landroid/content/Intent$FilterComparison;
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .end local v6           #token:J
    :catch_0
    move-exception v1

    .line 824
    .local v1, e:Landroid/os/RemoteException;
    iget-object v8, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_0

    .line 861
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #conn:Landroid/content/ServiceConnection;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #key:Landroid/content/Intent$FilterComparison;
    .restart local v5       #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .restart local v6       #token:J
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 867
    .end local v0           #conn:Landroid/content/ServiceConnection;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #key:Landroid/content/Intent$FilterComparison;
    .end local v5           #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/Intent$FilterComparison;>;"
    .end local v6           #token:J
    :cond_2
    return-void
.end method

.method public partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .locals 5
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 722
    if-nez p1, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    array-length v3, p1

    if-eqz v3, :cond_0

    .line 728
    array-length v0, p1

    .line 730
    .local v0, N:I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 731
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 732
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 733
    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v2

    .line 734
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, p2, v3}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;Z)V

    .line 732
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 736
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V
    .locals 1
    .parameter "host"

    .prologue
    .line 971
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 974
    :cond_0
    return-void
.end method

.method readStateFromFileLocked(Ljava/io/FileInputStream;)V
    .locals 26
    .parameter "stream"

    .prologue
    .line 1320
    const/16 v20, 0x0

    .line 1323
    .local v20, success:Z
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 1324
    .local v15, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1327
    const/16 v18, 0x0

    .line 1328
    .local v18, providerIndex:I
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1330
    .local v10, loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    :cond_0
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    .line 1331
    .local v22, type:I
    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 1332
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 1333
    .local v21, tag:Ljava/lang/String;
    const-string v23, "p"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1336
    const/16 v23, 0x0

    const-string v24, "pkg"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1337
    .local v16, pkg:Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "cl"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1339
    .local v3, cl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v14

    .line 1341
    .local v14, packageManager:Landroid/content/pm/PackageManager;
    :try_start_1
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1348
    :goto_0
    :try_start_2
    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v12

    .line 1349
    .local v12, p:Lcom/android/server/AppWidgetService$Provider;
    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 1351
    new-instance v12, Lcom/android/server/AppWidgetService$Provider;

    .end local v12           #p:Lcom/android/server/AppWidgetService$Provider;
    invoke-direct {v12}, Lcom/android/server/AppWidgetService$Provider;-><init>()V

    .line 1352
    .restart local v12       #p:Lcom/android/server/AppWidgetService$Provider;
    new-instance v23, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v23 .. v23}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v12, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1353
    iget-object v0, v12, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/ComponentName;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1354
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v12, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    :cond_1
    if-eqz v12, :cond_2

    .line 1359
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1361
    :cond_2
    add-int/lit8 v18, v18, 0x1

    .line 1436
    .end local v3           #cl:Ljava/lang/String;
    .end local v12           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v14           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #pkg:Ljava/lang/String;
    .end local v21           #tag:Ljava/lang/String;
    :cond_3
    :goto_1
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 1437
    const/16 v20, 0x1

    .line 1450
    .end local v10           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v22           #type:I
    :goto_2
    if-eqz v20, :cond_d

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v8, v23, -0x1

    .local v8, i:I
    :goto_3
    if-ltz v8, :cond_e

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 1453
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 1342
    .end local v8           #i:I
    .restart local v3       #cl:Ljava/lang/String;
    .restart local v10       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .restart local v14       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16       #pkg:Ljava/lang/String;
    .restart local v18       #providerIndex:I
    .restart local v21       #tag:Ljava/lang/String;
    .restart local v22       #type:I
    :catch_0
    move-exception v4

    .line 1343
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v23, 0x1

    :try_start_3
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1345
    .local v17, pkgs:[Ljava/lang/String;
    const/16 v23, 0x0

    aget-object v16, v17, v23

    goto/16 :goto_0

    .line 1363
    .end local v3           #cl:Ljava/lang/String;
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #pkg:Ljava/lang/String;
    .end local v17           #pkgs:[Ljava/lang/String;
    :cond_4
    const-string v23, "h"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1364
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetService;->nCurrentHostIndex:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AppWidgetService;->nCurrentHostIndex:I

    .line 1366
    new-instance v7, Lcom/android/server/AppWidgetService$Host;

    invoke-direct {v7}, Lcom/android/server/AppWidgetService$Host;-><init>()V

    .line 1370
    .local v7, host:Lcom/android/server/AppWidgetService$Host;
    const/16 v23, 0x0

    const-string v24, "pkg"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    .line 1372
    :try_start_4
    iget-object v0, v7, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->getUidForPackage(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v7, Lcom/android/server/AppWidgetService$Host;->uid:I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1376
    :goto_4
    :try_start_5
    iget-boolean v0, v7, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 1379
    :cond_5
    const/16 v23, 0x0

    const-string v24, "id"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x10

    invoke-static/range {v23 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v7, Lcom/android/server/AppWidgetService$Host;->hostId:I

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_1

    .line 1438
    .end local v7           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v10           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v21           #tag:Ljava/lang/String;
    .end local v22           #type:I
    :catch_1
    move-exception v4

    .line 1439
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v23, "AppWidgetService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1373
    .end local v4           #e:Ljava/lang/NullPointerException;
    .restart local v7       #host:Lcom/android/server/AppWidgetService$Host;
    .restart local v10       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #providerIndex:I
    .restart local v21       #tag:Ljava/lang/String;
    .restart local v22       #type:I
    :catch_2
    move-exception v5

    .line 1374
    .local v5, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v23, 0x1

    :try_start_6
    move/from16 v0, v23

    iput-boolean v0, v7, Lcom/android/server/AppWidgetService$Host;->zombie:Z
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    .line 1440
    .end local v5           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v10           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v21           #tag:Ljava/lang/String;
    .end local v22           #type:I
    :catch_3
    move-exception v4

    .line 1441
    .local v4, e:Ljava/lang/NumberFormatException;
    const-string v23, "AppWidgetService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1383
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #host:Lcom/android/server/AppWidgetService$Host;
    .restart local v10       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #providerIndex:I
    .restart local v21       #tag:Ljava/lang/String;
    .restart local v22       #type:I
    :cond_6
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mDeletedHost:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetService;->nCurrentHostIndex:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_1

    .line 1442
    .end local v7           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v10           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v21           #tag:Ljava/lang/String;
    .end local v22           #type:I
    :catch_4
    move-exception v4

    .line 1443
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v23, "AppWidgetService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1386
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v10       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #providerIndex:I
    .restart local v21       #tag:Ljava/lang/String;
    .restart local v22       #type:I
    :cond_7
    :try_start_8
    const-string v23, "g"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1387
    new-instance v9, Lcom/android/server/AppWidgetService$AppWidgetId;

    invoke-direct {v9}, Lcom/android/server/AppWidgetService$AppWidgetId;-><init>()V

    .line 1388
    .local v9, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    const/16 v23, 0x0

    const-string v24, "id"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x10

    invoke-static/range {v23 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    .line 1389
    iget v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_8

    .line 1390
    iget v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    .line 1393
    :cond_8
    const/16 v23, 0x0

    const-string v24, "p"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1394
    .local v19, providerString:Ljava/lang/String;
    if-eqz v19, :cond_9

    .line 1398
    const/16 v23, 0x10

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 1399
    .local v13, pIndex:I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v0, v23

    iput-object v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 1404
    iget-object v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 1411
    .end local v13           #pIndex:I
    :cond_9
    const/16 v23, 0x0

    const-string v24, "h"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x10

    invoke-static/range {v23 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 1412
    .local v6, hIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mDeletedHost:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 1416
    const/4 v11, 0x0

    .line 1417
    .local v11, offset:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mDeletedHost:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v8, v0, :cond_b

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mDeletedHost:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    if-ge v0, v6, :cond_a

    .line 1419
    add-int/lit8 v11, v11, 0x1

    .line 1417
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1422
    :cond_b
    sub-int/2addr v6, v11

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v0, v23

    iput-object v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 1424
    iget-object v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 1429
    iget-object v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c

    .line 1430
    iget-object v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1432
    :cond_c
    iget-object v0, v9, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_1

    .line 1444
    .end local v6           #hIndex:I
    .end local v8           #i:I
    .end local v9           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    .end local v10           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v11           #offset:I
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v19           #providerString:Ljava/lang/String;
    .end local v21           #tag:Ljava/lang/String;
    .end local v22           #type:I
    :catch_5
    move-exception v4

    .line 1445
    .local v4, e:Ljava/io/IOException;
    const-string v23, "AppWidgetService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1446
    .end local v4           #e:Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 1447
    .local v4, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v23, "AppWidgetService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "failed parsing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1458
    .end local v4           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_d
    const-string v23, "AppWidgetService"

    const-string v24, "Failed to read state, clearing widgets and hosts."

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1463
    .local v2, N:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_6
    if-ge v8, v2, :cond_e

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 1463
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1467
    .end local v2           #N:I
    :cond_e
    return-void
.end method

.method registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V
    .locals 11
    .parameter "p"
    .parameter "appWidgetIds"

    .prologue
    const/4 v7, 0x1

    .line 1045
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    if-lez v0, :cond_1

    .line 1049
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 1050
    .local v7, alreadyRegistered:Z
    :goto_0
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "appWidgetIds"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1052
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1053
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1055
    .local v9, token:J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/high16 v2, 0x800

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1060
    if-nez v7, :cond_1

    .line 1061
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    int-to-long v4, v0

    .line 1062
    .local v4, period:J
    const-wide/32 v0, 0x1b7740

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    .line 1063
    const-wide/32 v4, 0x1b7740

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1069
    .end local v4           #period:J
    .end local v7           #alreadyRegistered:Z
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #token:J
    :cond_1
    return-void

    .line 1049
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1058
    .restart local v7       #alreadyRegistered:Z
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #token:J
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method removeProviderLocked(ILcom/android/server/AppWidgetService$Provider;)V
    .locals 5
    .parameter "index"
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    .line 1008
    iget-object v3, p2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1009
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1010
    iget-object v3, p2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 1012
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 1014
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 1016
    iget-object v3, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v3, v3, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1017
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1018
    iput-object v4, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 1019
    iget-object v3, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 1020
    iput-object v4, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 1009
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1022
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_0
    iget-object v3, p2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1023
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1024
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mDeletedProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 1027
    return-void
.end method

.method removeProvidersForPackageLocked(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 1650
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1651
    .local v0, N:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 1652
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Provider;

    .line 1653
    .local v3, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v4, v3, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1654
    invoke-virtual {p0, v2, v3}, Lcom/android/server/AppWidgetService;->removeProviderLocked(ILcom/android/server/AppWidgetService$Provider;)V

    .line 1651
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1662
    .end local v3           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_1
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1663
    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 1664
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 1665
    .local v1, host:Lcom/android/server/AppWidgetService$Host;
    iget-object v4, v1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1666
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetService;->deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 1663
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1669
    .end local v1           #host:Lcom/android/server/AppWidgetService$Host;
    :cond_3
    return-void
.end method

.method saveStateLocked()V
    .locals 6

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->savedStateFile()Lcom/android/internal/os/AtomicFile;

    move-result-object v1

    .line 1249
    .local v1, file:Lcom/android/internal/os/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1250
    .local v2, stream:Ljava/io/FileOutputStream;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->writeStateToFileLocked(Ljava/io/FileOutputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1251
    invoke-virtual {v1, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 1259
    .end local v2           #stream:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1253
    .restart local v2       #stream:Ljava/io/FileOutputStream;
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1254
    const-string v3, "AppWidgetService"

    const-string v4, "Failed to save state, restoring backup."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1256
    .end local v2           #stream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1257
    .local v0, e:Ljava/io/IOException;
    const-string v3, "AppWidgetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed open state file for write: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method savedStateFile()Lcom/android/internal/os/AtomicFile;
    .locals 3

    .prologue
    .line 1470
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/appwidgets.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method sendEnableIntentLocked(Lcom/android/server/AppWidgetService$Provider;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 1030
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1032
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1033
    return-void
.end method

.method sendInitialBroadcasts()V
    .locals 6

    .prologue
    .line 1210
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1211
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 1212
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1213
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1214
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Provider;

    .line 1215
    .local v3, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v4, v3, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1216
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->sendEnableIntentLocked(Lcom/android/server/AppWidgetService$Provider;)V

    .line 1217
    invoke-static {v3}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v1

    .line 1218
    .local v1, appWidgetIds:[I
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 1219
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 1213
    .end local v1           #appWidgetIds:[I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1222
    .end local v3           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_1
    monitor-exit v5

    .line 1223
    return-void

    .line 1222
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V
    .locals 2
    .parameter "p"
    .parameter "appWidgetIds"

    .prologue
    .line 1036
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 1037
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1038
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1039
    iget-object v1, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1040
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1042
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I
    .locals 9
    .parameter "callbacks"
    .parameter "packageName"
    .parameter "hostId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 871
    .local p4, updatedViews:Ljava/util/List;,"Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->enforceCallingUid(Ljava/lang/String;)I

    move-result v1

    .line 872
    .local v1, callingUid:I
    iget-object v8, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v8

    .line 873
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 874
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/AppWidgetService;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetService$Host;

    move-result-object v2

    .line 875
    .local v2, host:Lcom/android/server/AppWidgetService$Host;
    iput-object p1, v2, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 877
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 879
    iget-object v5, v2, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    .line 880
    .local v5, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 881
    .local v0, N:I
    new-array v6, v0, [I

    .line 882
    .local v6, updatedIds:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 883
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 884
    .local v4, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    iget v7, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    aput v7, v6, v3

    .line 885
    iget-object v7, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 887
    .end local v4           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_0
    monitor-exit v8

    return-object v6

    .line 888
    .end local v0           #N:I
    .end local v2           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v3           #i:I
    .end local v5           #instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    .end local v6           #updatedIds:[I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public stopListening(I)V
    .locals 3
    .parameter "hostId"

    .prologue
    .line 892
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 893
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 894
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/AppWidgetService;->lookupHostLocked(II)Lcom/android/server/AppWidgetService$Host;

    move-result-object v0

    .line 895
    .local v0, host:Lcom/android/server/AppWidgetService$Host;
    if-eqz v0, :cond_0

    .line 896
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 897
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 899
    :cond_0
    monitor-exit v2

    .line 900
    return-void

    .line 899
    .end local v0           #host:Lcom/android/server/AppWidgetService$Host;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady(Z)V
    .locals 8
    .parameter "safeMode"

    .prologue
    const/4 v7, 0x0

    .line 190
    iput-boolean p1, p0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    .line 192
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 193
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 194
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v7, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 204
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    .local v1, ipoFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1, v7, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 210
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v7, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 215
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 216
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .local v2, sdFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    return-void

    .line 194
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #ipoFilter:Landroid/content/IntentFilter;
    .end local v2           #sdFilter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;)V
    .locals 6
    .parameter "appWidgetId"
    .parameter "intent"

    .prologue
    .line 555
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 556
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 559
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Landroid/content/Intent$FilterComparison;

    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 561
    .local v2, key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v1

    .line 566
    .local v1, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-nez v1, :cond_0

    .line 567
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad appWidgetId"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 578
    .end local v1           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    .end local v2           #key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 570
    .restart local v1       #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    .restart local v2       #key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;

    .line 572
    .local v0, conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    invoke-virtual {v0}, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;->disconnect()V

    .line 573
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 574
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .end local v0           #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .end local v1           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :goto_0
    monitor-exit v4

    .line 579
    return-void

    .line 576
    :cond_1
    const-string v3, "AppWidgetService"

    const-string v5, "Error (unbindRemoteViewsService): Connection not bound"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .locals 5
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 704
    if-nez p1, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    array-length v3, p1

    if-eqz v3, :cond_0

    .line 710
    array-length v0, p1

    .line 712
    .local v0, N:I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 713
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 714
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 715
    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v2

    .line 716
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 718
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V
    .locals 1
    .parameter "id"
    .parameter "views"

    .prologue
    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;Z)V

    .line 780
    return-void
.end method

.method updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;Z)V
    .locals 4
    .parameter "id"
    .parameter "views"
    .parameter "isPartialUpdate"

    .prologue
    .line 786
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    if-nez v1, :cond_2

    .line 789
    if-nez p3, :cond_0

    iput-object p2, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    .line 791
    :cond_0
    const-string v2, "AppWidgetService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host.callbacks == null ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v1, :cond_1

    .line 793
    const-string v1, "AppWidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "id.host = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v3, v3, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 795
    const-string v1, "AppWidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " id.provider = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v3, v3, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_1
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v1, :cond_2

    .line 801
    :try_start_0
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v2, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-interface {v1, v2, p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :cond_2
    :goto_1
    return-void

    .line 791
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 802
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_1
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .locals 10
    .parameter "provider"
    .parameter "views"

    .prologue
    .line 758
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v7

    .line 759
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V

    .line 760
    const-string v6, "AppWidgetService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updated provider = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " updateAppWidgetProvider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v5

    .line 762
    .local v5, p:Lcom/android/server/AppWidgetService$Provider;
    if-nez v5, :cond_0

    .line 763
    const-string v6, "AppWidgetService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateAppWidgetProvider: provider doesn\'t exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    monitor-exit v7

    .line 776
    :goto_0
    return-void

    .line 766
    :cond_0
    iget-object v4, v5, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    .line 767
    .local v4, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v1

    .line 768
    .local v1, callingUid:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 769
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 770
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 771
    .local v3, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->canAccessAppWidgetId(Lcom/android/server/AppWidgetService$AppWidgetId;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 772
    invoke-virtual {p0, v3, p2}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 769
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 775
    .end local v3           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_2
    monitor-exit v7

    goto :goto_0

    .end local v0           #N:I
    .end local v1           #callingUid:I
    .end local v2           #i:I
    .end local v4           #instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    .end local v5           #p:Lcom/android/server/AppWidgetService$Provider;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method updateProvidersForPackageLocked(Ljava/lang/String;)V
    .locals 20
    .parameter "pkgName"

    .prologue
    .line 1579
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1580
    .local v13, keep:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v11, Landroid/content/Intent;

    const-string v17, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1581
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1586
    .local v6, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v6, :cond_1

    const/4 v3, 0x0

    .line 1587
    .local v3, N:I
    :goto_0
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v3, :cond_6

    .line 1588
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 1589
    .local v16, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1590
    .local v4, ai:Landroid/content/pm/ActivityInfo;
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    const/high16 v18, 0x4

    and-int v17, v17, v18

    if-eqz v17, :cond_2

    .line 1587
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1586
    .end local v3           #N:I
    .end local v4           #ai:Landroid/content/pm/ActivityInfo;
    .end local v9           #i:I
    .end local v16           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 1593
    .restart local v3       #N:I
    .restart local v4       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v9       #i:I
    .restart local v16       #ri:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1594
    new-instance v7, Landroid/content/ComponentName;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    .local v7, component:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v14

    .line 1596
    .local v14, p:Lcom/android/server/AppWidgetService$Provider;
    if-nez v14, :cond_3

    .line 1597
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1598
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1601
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v7, v1}, Lcom/android/server/AppWidgetService;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v15

    .line 1602
    .local v15, parsed:Lcom/android/server/AppWidgetService$Provider;
    if-eqz v15, :cond_0

    .line 1603
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1605
    iget-object v0, v15, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1607
    iget-object v0, v14, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1608
    .local v2, M:I
    if-lez v2, :cond_0

    .line 1609
    invoke-static {v14}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v5

    .line 1613
    .local v5, appWidgetIds:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 1614
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/android/server/AppWidgetService;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 1616
    const/4 v12, 0x0

    .local v12, j:I
    :goto_3
    if-ge v12, v2, :cond_5

    .line 1617
    iget-object v0, v14, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 1618
    .local v10, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    .line 1619
    iget-object v0, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    iget-object v0, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 1621
    :try_start_0
    iget-object v0, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v17, v0

    iget v0, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    move/from16 v18, v0

    iget-object v0, v14, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    :cond_4
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1622
    :catch_0
    move-exception v8

    .line 1626
    .local v8, ex:Landroid/os/RemoteException;
    iget-object v0, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_4

    .line 1631
    .end local v8           #ex:Landroid/os/RemoteException;
    .end local v10           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/android/server/AppWidgetService;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    goto/16 :goto_2

    .line 1639
    .end local v2           #M:I
    .end local v4           #ai:Landroid/content/pm/ActivityInfo;
    .end local v5           #appWidgetIds:[I
    .end local v7           #component:Landroid/content/ComponentName;
    .end local v12           #j:I
    .end local v14           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v15           #parsed:Lcom/android/server/AppWidgetService$Provider;
    .end local v16           #ri:Landroid/content/pm/ResolveInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1640
    add-int/lit8 v9, v3, -0x1

    :goto_5
    if-ltz v9, :cond_8

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AppWidgetService$Provider;

    .line 1642
    .restart local v14       #p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v0, v14, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    iget-object v0, v14, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 1644
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14}, Lcom/android/server/AppWidgetService;->removeProviderLocked(ILcom/android/server/AppWidgetService$Provider;)V

    .line 1640
    :cond_7
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 1647
    .end local v14           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_8
    return-void
.end method

.method writeStateToFileLocked(Ljava/io/FileOutputStream;)Z
    .locals 12
    .parameter "stream"

    .prologue
    const/4 v8, 0x1

    .line 1265
    :try_start_0
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1266
    .local v5, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v9, "utf-8"

    invoke-interface {v5, p1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1267
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1268
    const/4 v9, 0x0

    const-string v10, "gs"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1270
    const/4 v7, 0x0

    .line 1271
    .local v7, providerIndex:I
    iget-object v9, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1272
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1273
    iget-object v9, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppWidgetService$Provider;

    .line 1274
    .local v6, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v9, v6, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1275
    const/4 v9, 0x0

    const-string v10, "p"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1276
    const/4 v9, 0x0

    const-string v10, "pkg"

    iget-object v11, v6, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v11, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1277
    const/4 v9, 0x0

    const-string v10, "cl"

    iget-object v11, v6, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v11, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1278
    const/4 v9, 0x0

    const-string v10, "p"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1279
    iput v7, v6, Lcom/android/server/AppWidgetService$Provider;->tag:I

    .line 1280
    add-int/lit8 v7, v7, 0x1

    .line 1272
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1284
    .end local v6           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_1
    iget-object v9, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1285
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    .line 1286
    iget-object v9, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Host;

    .line 1287
    .local v2, host:Lcom/android/server/AppWidgetService$Host;
    const/4 v9, 0x0

    const-string v10, "h"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1288
    const/4 v9, 0x0

    const-string v10, "pkg"

    iget-object v11, v2, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1289
    const/4 v9, 0x0

    const-string v10, "id"

    iget v11, v2, Lcom/android/server/AppWidgetService$Host;->hostId:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1290
    const/4 v9, 0x0

    const-string v10, "h"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1291
    iput v3, v2, Lcom/android/server/AppWidgetService$Host;->tag:I

    .line 1285
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1294
    .end local v2           #host:Lcom/android/server/AppWidgetService$Host;
    :cond_2
    iget-object v9, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1295
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    .line 1296
    iget-object v9, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 1297
    .local v4, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    const/4 v9, 0x0

    const-string v10, "g"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1298
    const/4 v9, 0x0

    const-string v10, "id"

    iget v11, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1299
    const/4 v9, 0x0

    const-string v10, "h"

    iget-object v11, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v11, v11, Lcom/android/server/AppWidgetService$Host;->tag:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1300
    iget-object v9, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v9, :cond_3

    .line 1301
    const/4 v9, 0x0

    const-string v10, "p"

    iget-object v11, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget v11, v11, Lcom/android/server/AppWidgetService$Provider;->tag:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1303
    :cond_3
    const/4 v9, 0x0

    const-string v10, "g"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1295
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1306
    .end local v4           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_4
    const/4 v9, 0x0

    const-string v10, "gs"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1308
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v7           #providerIndex:I
    :goto_3
    return v8

    .line 1310
    :catch_0
    move-exception v1

    .line 1311
    .local v1, e:Ljava/io/IOException;
    const-string v8, "AppWidgetService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to write state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const/4 v8, 0x0

    goto :goto_3
.end method
