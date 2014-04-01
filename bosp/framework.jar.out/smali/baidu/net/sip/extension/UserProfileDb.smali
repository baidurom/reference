.class public Lbaidu/net/sip/extension/UserProfileDb;
.super Ljava/lang/Object;
.source "UserProfileDb.java"


# static fields
.field private static final PROFILES_DIR:Ljava/lang/String; = "/user_profiles/"

.field private static final PROFILE_OBJ_FILE:Ljava/lang/String; = ".pobj"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mProfilesDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lbaidu/net/sip/extension/UserProfileDb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbaidu/net/sip/extension/UserProfileDb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user_profiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbaidu/net/sip/extension/UserProfileDb;->mProfilesDirectory:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private deleteProfile(Ljava/io/File;)V
    .locals 5
    .parameter "file"

    .prologue
    .line 50
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, child:Ljava/io/File;
    invoke-direct {p0, v1}, Lbaidu/net/sip/extension/UserProfileDb;->deleteProfile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #child:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 54
    return-void
.end method

.method private deserialize(Ljava/io/File;)Lbaidu/net/sip/extension/UserProfile;
    .locals 8
    .parameter "profileObjectFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    .line 114
    .local v0, atomicFile:Lcom/android/internal/os/AtomicFile;
    const/4 v2, 0x0

    .line 116
    .local v2, ois:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .local v3, ois:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbaidu/net/sip/extension/UserProfile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    .local v4, p:Lbaidu/net/sip/extension/UserProfile;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    :cond_0
    move-object v2, v3

    .line 124
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .end local v4           #p:Lbaidu/net/sip/extension/UserProfile;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v4

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, e:Ljava/lang/ClassNotFoundException;
    :goto_1
    :try_start_2
    sget-object v5, Lbaidu/net/sip/extension/UserProfileDb;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deserialize a profile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 124
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 122
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    :cond_2
    throw v5

    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 119
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private retrieveUserProfileListInternal()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbaidu/net/sip/extension/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 93
    .local v9, userProfileList:Ljava/util/List;,"Ljava/util/List<Lbaidu/net/sip/extension/UserProfile;>;"
    new-instance v8, Ljava/io/File;

    iget-object v10, p0, Lbaidu/net/sip/extension/UserProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v8, root:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, dirs:[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 109
    :cond_0
    return-object v9

    .line 96
    :cond_1
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 97
    .local v1, dir:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v11, ".pobj"

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 96
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 100
    :cond_3
    :try_start_0
    invoke-direct {p0, v4}, Lbaidu/net/sip/extension/UserProfileDb;->deserialize(Ljava/io/File;)Lbaidu/net/sip/extension/UserProfile;

    move-result-object v7

    .line 101
    .local v7, p:Lbaidu/net/sip/extension/UserProfile;
    if-eqz v7, :cond_2

    .line 102
    iget-object v10, v7, Lbaidu/net/sip/extension/UserProfile;->mSipid:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 104
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 105
    .end local v7           #p:Lbaidu/net/sip/extension/UserProfile;
    :catch_0
    move-exception v3

    .line 106
    .local v3, e:Ljava/io/IOException;
    sget-object v10, Lbaidu/net/sip/extension/UserProfileDb;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "retrieveProfileListFromStorage()"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public deleteAllProfile()V
    .locals 7

    .prologue
    .line 41
    const-class v4, Lbaidu/net/sip/extension/UserProfileDb;

    monitor-enter v4

    .line 42
    :try_start_0
    invoke-direct {p0}, Lbaidu/net/sip/extension/UserProfileDb;->retrieveUserProfileListInternal()Ljava/util/List;

    move-result-object v1

    .line 43
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lbaidu/net/sip/extension/UserProfile;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbaidu/net/sip/extension/UserProfile;

    .line 44
    .local v2, profile:Lbaidu/net/sip/extension/UserProfile;
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lbaidu/net/sip/extension/UserProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lbaidu/net/sip/extension/UserProfile;->mSipid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lbaidu/net/sip/extension/UserProfileDb;->deleteProfile(Ljava/io/File;)V

    goto :goto_0

    .line 46
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lbaidu/net/sip/extension/UserProfile;>;"
    .end local v2           #profile:Lbaidu/net/sip/extension/UserProfile;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Lbaidu/net/sip/extension/UserProfile;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    return-void
.end method

.method public deleteProfile(Lbaidu/net/sip/extension/UserProfile;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 35
    const-class v1, Lbaidu/net/sip/extension/UserProfileDb;

    monitor-enter v1

    .line 36
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbaidu/net/sip/extension/UserProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lbaidu/net/sip/extension/UserProfile;->mSipid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lbaidu/net/sip/extension/UserProfileDb;->deleteProfile(Ljava/io/File;)V

    .line 37
    monitor-exit v1

    .line 38
    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHostUserProfile()Lbaidu/net/sip/extension/UserProfile;
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lbaidu/net/sip/extension/UserProfileDb;->retrieveUserProfileListInternal()Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lbaidu/net/sip/extension/UserProfile;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 83
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbaidu/net/sip/extension/UserProfile;

    .line 85
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveProfile(Lbaidu/net/sip/extension/UserProfile;)V
    .locals 9
    .parameter "p"

    .prologue
    .line 57
    const-class v7, Lbaidu/net/sip/extension/UserProfileDb;

    monitor-enter v7

    .line 58
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lbaidu/net/sip/extension/UserProfileDb;->mProfilesDirectory:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p1, Lbaidu/net/sip/extension/UserProfile;->mSipid:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 60
    :cond_0
    new-instance v0, Lcom/android/internal/os/AtomicFile;

    new-instance v6, Ljava/io/File;

    const-string v8, ".pobj"

    invoke-direct {v6, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .local v0, atomicFile:Lcom/android/internal/os/AtomicFile;
    const/4 v3, 0x0

    .line 63
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 65
    .local v4, oos:Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 66
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .local v5, oos:Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v5, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V

    .line 69
    invoke-virtual {v0, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 73
    if-eqz v5, :cond_3

    .line 74
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v4, v5

    .line 77
    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :cond_1
    :goto_0
    :try_start_4
    monitor-exit v7

    .line 78
    return-void

    .line 74
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v5       #oos:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v4, v5

    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 70
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 71
    .restart local v1       #e:Ljava/io/IOException;
    :goto_1
    :try_start_5
    invoke-virtual {v0, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 73
    if-eqz v4, :cond_1

    .line 74
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v0           #atomicFile:Lcom/android/internal/os/AtomicFile;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v6

    .line 73
    .restart local v0       #atomicFile:Lcom/android/internal/os/AtomicFile;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v6

    :goto_2
    if-eqz v4, :cond_2

    .line 74
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_2
    :goto_3
    :try_start_9
    throw v6

    :catch_3
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 73
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v5       #oos:Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 70
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v5       #oos:Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_1

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v5       #oos:Ljava/io/ObjectOutputStream;
    :cond_3
    move-object v4, v5

    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_0
.end method
