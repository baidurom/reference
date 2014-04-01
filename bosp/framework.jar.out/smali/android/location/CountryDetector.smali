.class public Landroid/location/CountryDetector;
.super Ljava/lang/Object;
.source "CountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/CountryDetector$ListenerTransport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/location/CountryListener;",
            "Landroid/location/CountryDetector$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/location/ICountryDetector;


# direct methods
.method public constructor <init>(Landroid/location/ICountryDetector;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    .line 97
    return-void
.end method

.method private getLocaleCountry()Landroid/location/Country;
    .locals 4

    .prologue
    .line 124
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 125
    .local v0, defaultLocale:Ljava/util/Locale;
    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Landroid/location/Country;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    .line 128
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V
    .locals 5
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 144
    iget-object v2, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    if-nez v2, :cond_0

    .line 159
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v3, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 149
    :try_start_0
    iget-object v2, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    new-instance v1, Landroid/location/CountryDetector$ListenerTransport;

    invoke-direct {v1, p1, p2}, Landroid/location/CountryDetector$ListenerTransport;-><init>(Landroid/location/CountryListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .local v1, transport:Landroid/location/CountryDetector$ListenerTransport;
    :try_start_1
    iget-object v2, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    invoke-interface {v2, v1}, Landroid/location/ICountryDetector;->addCountryListener(Landroid/location/ICountryListener;)V

    .line 153
    iget-object v2, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    .end local v1           #transport:Landroid/location/CountryDetector$ListenerTransport;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 154
    .restart local v1       #transport:Landroid/location/CountryDetector$ListenerTransport;
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "CountryDetector"

    const-string v4, "addCountryListener: RemoteException"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public detectCountry()Landroid/location/Country;
    .locals 3

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    if-nez v1, :cond_0

    .line 109
    invoke-direct {p0}, Landroid/location/CountryDetector;->getLocaleCountry()Landroid/location/Country;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 112
    :cond_0
    iget-object v1, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    invoke-interface {v1}, Landroid/location/ICountryDetector;->detectCountry()Landroid/location/Country;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "CountryDetector"

    const-string v2, "detectCountry: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeCountryListener(Landroid/location/CountryListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 166
    iget-object v2, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    if-nez v2, :cond_0

    .line 181
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v3, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 171
    :try_start_0
    iget-object v2, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector$ListenerTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .local v1, transport:Landroid/location/CountryDetector$ListenerTransport;
    if-eqz v1, :cond_1

    .line 174
    :try_start_1
    iget-object v2, p0, Landroid/location/CountryDetector;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v2, p0, Landroid/location/CountryDetector;->mService:Landroid/location/ICountryDetector;

    invoke-interface {v2, v1}, Landroid/location/ICountryDetector;->removeCountryListener(Landroid/location/ICountryListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Landroid/location/CountryDetector$ListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 176
    .restart local v1       #transport:Landroid/location/CountryDetector$ListenerTransport;
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "CountryDetector"

    const-string/jumbo v4, "removeCountryListener: RemoteException"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
