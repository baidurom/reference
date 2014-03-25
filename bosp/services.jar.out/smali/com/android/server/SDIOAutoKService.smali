.class public final Lcom/android/server/SDIOAutoKService;
.super Landroid/os/Binder;
.source "SDIOAutoKService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSDIOAutoKObserver:Landroid/os/UEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/server/SDIOAutoKService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SDIOAutoKService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    new-instance v7, Lcom/android/server/SDIOAutoKService$1;

    invoke-direct {v7, p0}, Lcom/android/server/SDIOAutoKService$1;-><init>(Lcom/android/server/SDIOAutoKService;)V

    iput-object v7, p0, Lcom/android/server/SDIOAutoKService;->mSDIOAutoKObserver:Landroid/os/UEventObserver;

    .line 22
    new-instance v2, Ljava/io/File;

    const-string v7, "proc/lte_autok"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v2, fAutoK:Ljava/io/File;
    sget-object v7, Lcom/android/server/SDIOAutoKService;->TAG:Ljava/lang/String;

    const-string v8, ">>>>>>> SDIOAutoK Start Observing <<<<<<<"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iput-object p1, p0, Lcom/android/server/SDIOAutoKService;->mContext:Landroid/content/Context;

    .line 26
    iget-object v7, p0, Lcom/android/server/SDIOAutoKService;->mSDIOAutoKObserver:Landroid/os/UEventObserver;

    const-string v8, "FROM="

    invoke-virtual {v7, v8}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 30
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v7, "proc/lte_autok"

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 31
    .local v3, fout:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 33
    .local v0, bos:Ljava/io/BufferedOutputStream;
    const-string v7, "system_server"

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 34
    .local v5, procParams:[B
    const-string v6, ""

    .line 36
    .local v6, str:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v7, v5

    if-ge v4, v7, :cond_0

    .line 38
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v5, v4

    invoke-static {v8}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 36
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 40
    :cond_0
    sget-object v7, Lcom/android/server/SDIOAutoKService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "system_server procParams.length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v5

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object v7, Lcom/android/server/SDIOAutoKService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "system_server procParam: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v0, v5, v7, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 45
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 46
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fout:Ljava/io/FileOutputStream;
    .end local v4           #i:I
    .end local v5           #procParams:[B
    .end local v6           #str:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/server/SDIOAutoKService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static hexStringToByteArray_reverse(Ljava/lang/String;)[B
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x10

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 56
    .local v2, len:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 57
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 58
    sub-int v3, v2, v1

    add-int/lit8 v3, v3, -0x2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 57
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 61
    :cond_0
    return-object v0
.end method
