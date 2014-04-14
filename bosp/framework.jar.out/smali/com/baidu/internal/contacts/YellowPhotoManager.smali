.class public Lcom/baidu/internal/contacts/YellowPhotoManager;
.super Ljava/lang/Object;
.source "YellowPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/contacts/YellowPhotoManager$Request;,
        Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;,
        Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;
    }
.end annotation


# static fields
.field public static final COLUMN_NUMBER:I = 0x0

.field public static final COLUMN_PHOTO:I = 0x1

.field private static DBG:Z = false

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final HOLDER_CACHE_SIZE:I = 0x1f4

.field private static final MESSAGE_PHOTOS_LOADED:I = 0x2

.field private static final MESSAGE_REQUEST_LOADING:I = 0x1

.field private static final PHOTO_COLUMNS:[Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "YellowPhotoManager"

.field private static mPhotoManager:Lcom/baidu/internal/contacts/YellowPhotoManager;


# instance fields
.field private final mBitmapHolderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mLoaderThread:Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/baidu/internal/contacts/YellowPhotoManager$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    sput-boolean v2, Lcom/baidu/internal/contacts/YellowPhotoManager;->DBG:Z

    .line 47
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/baidu/internal/contacts/YellowPhotoManager;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "number"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "photo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/internal/contacts/YellowPhotoManager;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mMainThreadHandler:Landroid/os/Handler;

    .line 76
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    iput-object p1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mContext:Landroid/content/Context;

    .line 89
    const/16 v0, 0x1f4

    .line 90
    .local v0, holderCacheSize:I
    new-instance v1, Lcom/baidu/internal/contacts/YellowPhotoManager$1;

    const/16 v2, 0x1f4

    invoke-direct {v1, p0, v2}, Lcom/baidu/internal/contacts/YellowPhotoManager$1;-><init>(Lcom/baidu/internal/contacts/YellowPhotoManager;I)V

    iput-object v1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mBitmapHolderCache:Landroid/util/LruCache;

    .line 92
    return-void
.end method

.method static synthetic access$200(Lcom/baidu/internal/contacts/YellowPhotoManager;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/baidu/internal/contacts/YellowPhotoManager;->obtainNumbersAndPhotoUris(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/baidu/internal/contacts/YellowPhotoManager;->PHOTO_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/baidu/internal/contacts/YellowPhotoManager;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/internal/contacts/YellowPhotoManager;Ljava/lang/Object;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/baidu/internal/contacts/YellowPhotoManager;->cacheBitmap(Ljava/lang/Object;[B)V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/internal/contacts/YellowPhotoManager;Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/baidu/internal/contacts/YellowPhotoManager;->cacheBitmap(Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/baidu/internal/contacts/YellowPhotoManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cacheBitmap(Ljava/lang/Object;Z)V
    .locals 2
    .parameter "key"
    .parameter "isYellow"

    .prologue
    .line 216
    new-instance v0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;

    invoke-direct {v0, p2}, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;-><init>(Z)V

    .line 217
    .local v0, holder:Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;
    iget-object v1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method

.method private cacheBitmap(Ljava/lang/Object;[B)V
    .locals 2
    .parameter "key"
    .parameter "bytes"

    .prologue
    .line 210
    new-instance v0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;

    invoke-direct {v0, p2}, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;-><init>([B)V

    .line 211
    .local v0, holder:Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;
    invoke-static {v0}, Lcom/baidu/internal/contacts/YellowPhotoManager;->inflateBitmap(Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;)V

    .line 212
    iget-object v1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/internal/contacts/YellowPhotoManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    sget-object v0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mPhotoManager:Lcom/baidu/internal/contacts/YellowPhotoManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/baidu/internal/contacts/YellowPhotoManager;

    invoke-direct {v0, p0}, Lcom/baidu/internal/contacts/YellowPhotoManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mPhotoManager:Lcom/baidu/internal/contacts/YellowPhotoManager;

    .line 83
    :cond_0
    sget-object v0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mPhotoManager:Lcom/baidu/internal/contacts/YellowPhotoManager;

    return-object v0
.end method

.method private static inflateBitmap(Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    .line 221
    iget-object v1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;->bytes:[B

    .line 222
    .local v1, bytes:[B
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v2, :cond_2

    .line 227
    iget-object v2, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 228
    iget-object v2, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 234
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 236
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Lcom/baidu/internal/contacts/YellowPhotoManager$Request;)Z
    .locals 5
    .parameter "view"
    .parameter "request"

    .prologue
    const/4 v1, 0x1

    .line 178
    iget-object v2, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;

    .line 179
    .local v0, holder:Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;
    if-nez v0, :cond_1

    .line 180
    sget-boolean v1, Lcom/baidu/internal/contacts/YellowPhotoManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "YellowPhotoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "holder not cached, key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    invoke-virtual {p2, p1}, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->applyDefaultIcon(Landroid/widget/ImageView;)V

    .line 184
    const/4 v1, 0x0

    .line 206
    :goto_0
    return v1

    .line 187
    :cond_1
    iget-boolean v2, v0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;->isYellow:Z

    if-nez v2, :cond_3

    .line 188
    sget-boolean v2, Lcom/baidu/internal/contacts/YellowPhotoManager;->DBG:Z

    if-eqz v2, :cond_2

    .line 189
    const-string v2, "YellowPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "holder is not yellow, key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    invoke-virtual {p2, p1}, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->applyDefaultIcon(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 195
    :cond_3
    iget-object v2, v0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;->bytes:[B

    if-nez v2, :cond_5

    .line 196
    sget-boolean v2, Lcom/baidu/internal/contacts/YellowPhotoManager;->DBG:Z

    if-eqz v2, :cond_4

    .line 197
    const-string v2, "YellowPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "holder.bytes is null, key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_4
    invoke-virtual {p2, p1}, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->applyYellowIcon(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 203
    :cond_5
    invoke-static {v0}, Lcom/baidu/internal/contacts/YellowPhotoManager;->inflateBitmap(Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;)V

    .line 204
    iget-object v2, v0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private loadPhoto(Landroid/widget/ImageView;Lcom/baidu/internal/contacts/YellowPhotoManager$Request;)V
    .locals 2
    .parameter "view"
    .parameter "request"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/baidu/internal/contacts/YellowPhotoManager;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/baidu/internal/contacts/YellowPhotoManager$Request;)Z

    move-result v0

    .line 106
    .local v0, loaded:Z
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-direct {p0}, Lcom/baidu/internal/contacts/YellowPhotoManager;->requestLoading()V

    goto :goto_0
.end method

.method private obtainNumbersAndPhotoUris(Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, numbers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 250
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 251
    iget-object v3, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 252
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/internal/contacts/YellowPhotoManager$Request;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;

    .line 254
    .local v2, request:Lcom/baidu/internal/contacts/YellowPhotoManager$Request;
    iget-object v3, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;

    .line 255
    .local v0, holder:Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;
    if-nez v0, :cond_0

    .line 256
    invoke-virtual {v2}, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->isUriRequest()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    #getter for: Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->access$000(Lcom/baidu/internal/contacts/YellowPhotoManager$Request;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    :cond_1
    #getter for: Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->access$100(Lcom/baidu/internal/contacts/YellowPhotoManager$Request;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    .end local v0           #holder:Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;
    .end local v2           #request:Lcom/baidu/internal/contacts/YellowPhotoManager$Request;
    :cond_2
    return-void
.end method

.method private processLoadedImages()V
    .locals 5

    .prologue
    .line 147
    iget-object v4, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 148
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 150
    .local v3, view:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;

    .line 151
    .local v1, key:Lcom/baidu/internal/contacts/YellowPhotoManager$Request;
    invoke-direct {p0, v3, v1}, Lcom/baidu/internal/contacts/YellowPhotoManager;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/baidu/internal/contacts/YellowPhotoManager$Request;)Z

    move-result v2

    .line 152
    .local v2, loaded:Z
    if-eqz v2, :cond_0

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 157
    .end local v1           #key:Lcom/baidu/internal/contacts/YellowPhotoManager$Request;
    .end local v2           #loaded:Z
    .end local v3           #view:Landroid/widget/ImageView;
    :cond_1
    invoke-direct {p0}, Lcom/baidu/internal/contacts/YellowPhotoManager;->softenCache()V

    .line 159
    sget-boolean v4, Lcom/baidu/internal/contacts/YellowPhotoManager;->DBG:Z

    if-eqz v4, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/baidu/internal/contacts/YellowPhotoManager;->showRequestsStatus()V

    .line 163
    :cond_2
    iget-object v4, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 164
    invoke-direct {p0}, Lcom/baidu/internal/contacts/YellowPhotoManager;->requestLoading()V

    .line 166
    :cond_3
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 115
    iget-boolean v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 116
    iput-boolean v1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mLoadingRequested:Z

    .line 117
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    :cond_0
    return-void
.end method

.method private showRequestsStatus()V
    .locals 5

    .prologue
    .line 169
    const-string v2, "YellowPhotoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "photo: size of pending requests = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v2, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 171
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 173
    .local v1, view:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;

    goto :goto_0

    .line 175
    .end local v1           #view:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private softenCache()V
    .locals 3

    .prologue
    .line 243
    iget-object v2, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;

    .line 244
    .local v0, holder:Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 246
    .end local v0           #holder:Lcom/baidu/internal/contacts/YellowPhotoManager$BitmapHolder;
    :cond_0
    return-void
.end method


# virtual methods
.method public ensureLoaderThread()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mLoaderThread:Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;

    iget-object v1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;-><init>(Lcom/baidu/internal/contacts/YellowPhotoManager;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mLoaderThread:Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;

    .line 142
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mLoaderThread:Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;

    invoke-virtual {v0}, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->start()V

    .line 144
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 136
    :goto_0
    return v0

    .line 125
    :pswitch_0
    iput-boolean v1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mLoadingRequested:Z

    .line 126
    invoke-virtual {p0}, Lcom/baidu/internal/contacts/YellowPhotoManager;->ensureLoaderThread()V

    .line 127
    iget-object v1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager;->mLoaderThread:Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;

    invoke-virtual {v1}, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->requestLoading()V

    goto :goto_0

    .line 132
    :pswitch_1
    invoke-direct {p0}, Lcom/baidu/internal/contacts/YellowPhotoManager;->processLoadedImages()V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 2
    .parameter "view"
    .parameter "input"
    .parameter "defaultId"

    .prologue
    .line 95
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-static {p2}, Lcom/baidu/internal/contacts/YellowInfoHelper;->trimNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, number:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/baidu/internal/contacts/YellowPhotoManager$Request;->createFromNumber(Ljava/lang/String;I)Lcom/baidu/internal/contacts/YellowPhotoManager$Request;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/baidu/internal/contacts/YellowPhotoManager;->loadPhoto(Landroid/widget/ImageView;Lcom/baidu/internal/contacts/YellowPhotoManager$Request;)V

    .line 102
    .end local v0           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
