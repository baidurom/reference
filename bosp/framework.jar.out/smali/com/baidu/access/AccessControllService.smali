.class public Lcom/baidu/access/AccessControllService;
.super Lcom/baidu/access/IAccessControll$Stub;
.source "AccessControllService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/access/AccessControllService$AccessHandler;
    }
.end annotation


# static fields
.field private static final ATTR_ENABLE:Ljava/lang/String; = "enable"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DB_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final MSG_WRITE:I = 0xb

.field public static final TAG:Ljava/lang/String; = "AccessControllManager"

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_BODY:Ljava/lang/String; = "access-controll-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field private mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mPolicyFile:Lcom/android/internal/os/AtomicFile;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/baidu/access/IAccessControll$Stub;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/access/AccessControllService;->mEnabled:Z

    .line 150
    iput-object p1, p0, Lcom/baidu/access/AccessControllService;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AccessControllService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/access/AccessControllService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 153
    iget-object v0, p0, Lcom/baidu/access/AccessControllService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 154
    new-instance v0, Lcom/baidu/access/AccessControllService$AccessHandler;

    iget-object v1, p0, Lcom/baidu/access/AccessControllService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/access/AccessControllService$AccessHandler;-><init>(Lcom/baidu/access/AccessControllService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/access/AccessControllService;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/access/AccessControllService;->mBlockedPackages:Ljava/util/HashSet;

    .line 157
    invoke-direct {p0}, Lcom/baidu/access/AccessControllService;->loadBlockDb()V

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/access/AccessControllService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/baidu/access/AccessControllService;->writeBlockDb()V

    return-void
.end method

.method private loadBlockDb()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    .line 56
    iget-object v9, p0, Lcom/baidu/access/AccessControllService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v9

    .line 57
    :try_start_0
    iget-object v7, p0, Lcom/baidu/access/AccessControllService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    if-nez v7, :cond_3

    .line 58
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, dir:Ljava/io/File;
    new-instance v7, Lcom/android/internal/os/AtomicFile;

    new-instance v10, Ljava/io/File;

    const-string v11, "access_controll_policy.xml"

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v10}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/baidu/access/AccessControllService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    .line 61
    iget-object v7, p0, Lcom/baidu/access/AccessControllService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const/4 v2, 0x0

    .line 65
    .local v2, infile:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v7, p0, Lcom/baidu/access/AccessControllService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v7}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 66
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 67
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 71
    const/4 v6, 0x1

    .line 72
    .local v6, version:I
    :cond_0
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    if-eq v5, v8, :cond_6

    .line 73
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, tag:Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 75
    const-string v7, "access-controll-policy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 76
    const/4 v7, 0x0

    const-string/jumbo v10, "version"

    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 78
    :cond_1
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 79
    const/4 v7, 0x0

    const-string v10, "enable"

    invoke-interface {v3, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_4

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lcom/baidu/access/AccessControllService;->mEnabled:Z

    .line 81
    :cond_2
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 82
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 83
    const-string/jumbo v7, "package"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 84
    iget-object v7, p0, Lcom/baidu/access/AccessControllService;->mBlockedPackages:Ljava/util/HashSet;

    const/4 v10, 0x0

    const-string/jumbo v11, "name"

    invoke-interface {v3, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 93
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #type:I
    .end local v6           #version:I
    :catch_0
    move-exception v7

    .line 102
    :try_start_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 105
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #infile:Ljava/io/FileInputStream;
    :cond_3
    :goto_3
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    return-void

    .line 79
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #infile:Ljava/io/FileInputStream;
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #type:I
    .restart local v6       #version:I
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 86
    :cond_5
    :try_start_3
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    goto :goto_0

    .line 102
    .end local v4           #tag:Ljava/lang/String;
    :cond_6
    :try_start_4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    .line 105
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #infile:Ljava/io/FileInputStream;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #type:I
    .end local v6           #version:I
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 95
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #infile:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 96
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    const-string v7, "AccessControllManager"

    const-string v8, "Unable to read blocked notifications database"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 102
    :try_start_6
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 97
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_7
    const-string v7, "AccessControllManager"

    const-string v8, "Unable to parse blocked notifications database"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 102
    :try_start_8
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 99
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    .line 100
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_9
    const-string v7, "AccessControllManager"

    const-string v8, "Unable to parse blocked notifications database"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 102
    :try_start_a
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_1
    move-exception v7

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public static main(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 215
    new-instance v0, Lcom/baidu/access/AccessControllService;

    invoke-direct {v0, p0}, Lcom/baidu/access/AccessControllService;-><init>(Landroid/content/Context;)V

    .line 216
    .local v0, service:Lcom/baidu/access/AccessControllService;
    const-string v1, "AccessControllManager"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 220
    return-void
.end method

.method private writeBlockDb()V
    .locals 9

    .prologue
    .line 109
    iget-object v6, p0, Lcom/baidu/access/AccessControllService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v6

    .line 110
    const/4 v3, 0x0

    .line 112
    .local v3, outfile:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/baidu/access/AccessControllService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 114
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 115
    .local v2, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 117
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 119
    const/4 v5, 0x0

    const-string v7, "access-controll-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    const/4 v5, 0x0

    const-string/jumbo v7, "version"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    const/4 v5, 0x0

    const-string v7, "blocked-packages"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    const/4 v7, 0x0

    const-string v8, "enable"

    iget-boolean v5, p0, Lcom/baidu/access/AccessControllService;->mEnabled:Z

    if-eqz v5, :cond_1

    const-string v5, "1"

    :goto_0
    invoke-interface {v2, v7, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    iget-object v5, p0, Lcom/baidu/access/AccessControllService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 127
    .local v4, pkg:Ljava/lang/String;
    const/4 v5, 0x0

    const-string/jumbo v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    const/4 v5, 0x0

    const-string/jumbo v7, "name"

    invoke-interface {v2, v5, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    const/4 v5, 0x0

    const-string/jumbo v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v4           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/io/IOException;
    if-eqz v3, :cond_0

    .line 143
    :try_start_1
    iget-object v5, p0, Lcom/baidu/access/AccessControllService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 146
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    return-void

    .line 124
    .restart local v2       #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    :try_start_2
    const-string v5, "0"

    goto :goto_0

    .line 134
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v5, 0x0

    const-string v7, "blocked-packages"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    const/4 v5, 0x0

    const-string v7, "access-controll-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 140
    iget-object v5, p0, Lcom/baidu/access/AccessControllService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 146
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method


# virtual methods
.method public isControlled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 172
    iget-object v2, p0, Lcom/baidu/access/AccessControllService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v2

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/baidu/access/AccessControllService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 174
    .local v0, status:Z
    monitor-exit v2

    .line 175
    return v0

    .line 174
    .end local v0           #status:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/baidu/access/AccessControllService;->mEnabled:Z

    return v0
.end method

.method public setControlled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "pkg"
    .parameter "enabled"

    .prologue
    .line 183
    iget-object v2, p0, Lcom/baidu/access/AccessControllService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v2

    .line 184
    if-eqz p2, :cond_0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/baidu/access/AccessControllService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object v1, p0, Lcom/baidu/access/AccessControllService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 191
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/baidu/access/AccessControllService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    return-void

    .line 187
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/baidu/access/AccessControllService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/baidu/access/AccessControllService;->mEnabled:Z

    .line 162
    iget-object v1, p0, Lcom/baidu/access/AccessControllService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 163
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/baidu/access/AccessControllService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    return-void
.end method
