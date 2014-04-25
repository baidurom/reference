.class final Landroid/app/ContextImpl$ApplicationContentResolver;
.super Landroid/content/ContentResolver;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApplicationContentResolver"
.end annotation


# instance fields
.field private final mMainThread:Landroid/app/ActivityThread;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/os/UserHandle;)V
    .locals 1
    .parameter "context"
    .parameter "mainThread"
    .parameter "user"

    .prologue
    .line 2095
    invoke-direct {p0, p1}, Landroid/content/ContentResolver;-><init>(Landroid/content/Context;)V

    .line 2096
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread;

    iput-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    .line 2097
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mUser:Landroid/os/UserHandle;

    .line 2098
    return-void
.end method

.method private acquireProviderBaidu(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 4
    .parameter "context"
    .parameter "auth"

    .prologue
    const/4 v3, 0x1

    .line 2108
    invoke-static {p1}, Lcom/baidu/server/dp/DynamicPermissionManager;->getInstance(Landroid/content/Context;)Lcom/baidu/server/dp/DynamicPermissionManager;

    move-result-object v0

    .line 2109
    .local v0, dpm:Lcom/baidu/server/dp/DynamicPermissionManager;
    invoke-virtual {v0, p2}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkProviderPermissionSync(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 2110
    const-string p2, "com.baidu.dp.impostor"

    .line 2113
    :cond_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v1

    return-object v1
.end method

.method private acquireUnstableProviderBaidu(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 4
    .parameter "c"
    .parameter "auth"

    .prologue
    .line 2135
    invoke-static {p1}, Lcom/baidu/server/dp/DynamicPermissionManager;->getInstance(Landroid/content/Context;)Lcom/baidu/server/dp/DynamicPermissionManager;

    move-result-object v0

    .line 2136
    .local v0, dpm:Lcom/baidu/server/dp/DynamicPermissionManager;
    invoke-virtual {v0, p2}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkProviderPermissionSync(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2137
    const-string p2, "com.baidu.dp.impostor"

    .line 2140
    :cond_0
    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    iget-object v2, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public AddToQueryHistory(Ljava/lang/String;Ljava/lang/Throwable;I)Z
    .locals 1
    .parameter "uri"
    .parameter "stackTrace"
    .parameter "cursorHashCode"

    .prologue
    .line 2164
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ActivityThread;->AddToQueryHistory(Ljava/lang/String;Ljava/lang/Throwable;I)Z

    move-result v0

    return v0
.end method

.method public RemoveFromQueryHistory(I)V
    .locals 1
    .parameter "cursorHashCode"

    .prologue
    .line 2174
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->RemoveFromQueryHistory(I)V

    .line 2175
    return-void
.end method

.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 3
    .parameter "context"
    .parameter "auth"

    .prologue
    .line 2119
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method protected acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .parameter "context"
    .parameter "auth"

    .prologue
    .line 2102
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;->acquireProviderBaidu(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method protected acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .parameter "c"
    .parameter "auth"

    .prologue
    .line 2129
    invoke-direct {p0, p1, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;->acquireUnstableProviderBaidu(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public releaseProvider(Landroid/content/IContentProvider;)Z
    .locals 2
    .parameter "provider"

    .prologue
    .line 2124
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->releaseProvider(Landroid/content/IContentProvider;Z)Z

    move-result v0

    return v0
.end method

.method public releaseUnstableProvider(Landroid/content/IContentProvider;)Z
    .locals 2
    .parameter "icp"

    .prologue
    .line 2146
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->releaseProvider(Landroid/content/IContentProvider;Z)Z

    move-result v0

    return v0
.end method

.method public unstableProviderDied(Landroid/content/IContentProvider;)V
    .locals 3
    .parameter "icp"

    .prologue
    .line 2151
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    .line 2152
    return-void
.end method
