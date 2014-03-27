.class public Lyi/phone/IPhoneUtil$Creator;
.super Ljava/lang/Object;
.source "IPhoneUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/phone/IPhoneUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# static fields
.field private static mInstance:Lyi/phone/IPhoneUtil;

.field private static msync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lyi/phone/IPhoneUtil$Creator;->mInstance:Lyi/phone/IPhoneUtil;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyi/phone/IPhoneUtil$Creator;->msync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lyi/phone/IPhoneUtil;
    .locals 6
    .parameter "context"

    .prologue
    .line 33
    sget-object v3, Lyi/phone/IPhoneUtil$Creator;->mInstance:Lyi/phone/IPhoneUtil;

    if-nez v3, :cond_1

    .line 34
    sget-object v4, Lyi/phone/IPhoneUtil$Creator;->msync:Ljava/lang/Object;

    monitor-enter v4

    .line 35
    :try_start_0
    new-instance v1, Lyi/phone/DefaultPhoneUtil;

    invoke-direct {v1, p0}, Lyi/phone/DefaultPhoneUtil;-><init>(Landroid/content/Context;)V

    .line 38
    .local v1, mPhoneUtilImpl:Lyi/phone/IPhoneUtil;
    const/4 v3, 0x5

    new-array v2, v3, [Lyi/phone/IPhoneUtil;

    const/4 v3, 0x0

    new-instance v5, Lyi/phone/MTKTCLPhoneUtil;

    invoke-direct {v5, p0}, Lyi/phone/MTKTCLPhoneUtil;-><init>(Landroid/content/Context;)V

    aput-object v5, v2, v3

    const/4 v3, 0x1

    new-instance v5, Lyi/phone/MTKZXPhoneUtil;

    invoke-direct {v5, p0}, Lyi/phone/MTKZXPhoneUtil;-><init>(Landroid/content/Context;)V

    aput-object v5, v2, v3

    const/4 v3, 0x2

    new-instance v5, Lyi/phone/MTKPhoneUtil;

    invoke-direct {v5, p0}, Lyi/phone/MTKPhoneUtil;-><init>(Landroid/content/Context;)V

    aput-object v5, v2, v3

    const/4 v3, 0x3

    new-instance v5, Lyi/phone/QualcommPhoneUtil;

    invoke-direct {v5, p0}, Lyi/phone/QualcommPhoneUtil;-><init>(Landroid/content/Context;)V

    aput-object v5, v2, v3

    const/4 v3, 0x4

    new-instance v5, Lyi/phone/QualcommZXPhoneUtil;

    invoke-direct {v5, p0}, Lyi/phone/QualcommZXPhoneUtil;-><init>(Landroid/content/Context;)V

    aput-object v5, v2, v3

    .line 41
    .local v2, mPhones:[Lyi/phone/IPhoneUtil;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 42
    aget-object v3, v2, v0

    invoke-interface {v3}, Lyi/phone/IPhoneUtil;->isCompatable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    aget-object v1, v2, v0

    .line 47
    :cond_0
    sput-object v1, Lyi/phone/IPhoneUtil$Creator;->mInstance:Lyi/phone/IPhoneUtil;

    .line 48
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v0           #i:I
    .end local v1           #mPhoneUtilImpl:Lyi/phone/IPhoneUtil;
    .end local v2           #mPhones:[Lyi/phone/IPhoneUtil;
    :cond_1
    sget-object v3, Lyi/phone/IPhoneUtil$Creator;->mInstance:Lyi/phone/IPhoneUtil;

    return-object v3

    .line 41
    .restart local v0       #i:I
    .restart local v1       #mPhoneUtilImpl:Lyi/phone/IPhoneUtil;
    .restart local v2       #mPhones:[Lyi/phone/IPhoneUtil;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v0           #i:I
    .end local v1           #mPhoneUtilImpl:Lyi/phone/IPhoneUtil;
    .end local v2           #mPhones:[Lyi/phone/IPhoneUtil;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
