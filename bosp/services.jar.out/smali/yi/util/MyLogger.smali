.class public Lyi/util/MyLogger;
.super Ljava/lang/Object;
.source "MyLogger.java"


# static fields
.field private static sIsLoggerEnable:Z

.field private static sLoggerTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lyi/util/MyLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lyi/util/MyLogger;->sIsLoggerEnable:Z

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lyi/util/MyLogger;->sLoggerTable:Ljava/util/Hashtable;

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lyi/util/MyLogger;->LOG_TAG:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static disableLog()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lyi/util/MyLogger;->sIsLoggerEnable:Z

    .line 54
    return-void
.end method

.method public static enableLog()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lyi/util/MyLogger;->sIsLoggerEnable:Z

    .line 51
    return-void
.end method

.method public static getLogger(Ljava/lang/String;)Lyi/util/MyLogger;
    .locals 2
    .parameter "tag"

    .prologue
    .line 41
    sget-object v1, Lyi/util/MyLogger;->sLoggerTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyi/util/MyLogger;

    .line 42
    .local v0, classLogger:Lyi/util/MyLogger;
    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lyi/util/MyLogger;

    .end local v0           #classLogger:Lyi/util/MyLogger;
    invoke-direct {v0, p0}, Lyi/util/MyLogger;-><init>(Ljava/lang/String;)V

    .line 44
    .restart local v0       #classLogger:Lyi/util/MyLogger;
    sget-object v1, Lyi/util/MyLogger;->sLoggerTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 66
    sget-boolean v0, Lyi/util/MyLogger;->sIsLoggerEnable:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lyi/util/MyLogger;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 96
    sget-boolean v0, Lyi/util/MyLogger;->sIsLoggerEnable:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lyi/util/MyLogger;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "log"
    .parameter "tr"

    .prologue
    .line 102
    sget-boolean v0, Lyi/util/MyLogger;->sIsLoggerEnable:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lyi/util/MyLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 72
    sget-boolean v0, Lyi/util/MyLogger;->sIsLoggerEnable:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lyi/util/MyLogger;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "log"
    .parameter "tr"

    .prologue
    .line 78
    sget-boolean v0, Lyi/util/MyLogger;->sIsLoggerEnable:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lyi/util/MyLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 60
    sget-boolean v0, Lyi/util/MyLogger;->sIsLoggerEnable:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lyi/util/MyLogger;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 84
    sget-boolean v0, Lyi/util/MyLogger;->sIsLoggerEnable:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lyi/util/MyLogger;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "log"
    .parameter "tr"

    .prologue
    .line 90
    sget-boolean v0, Lyi/util/MyLogger;->sIsLoggerEnable:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lyi/util/MyLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    return-void
.end method
