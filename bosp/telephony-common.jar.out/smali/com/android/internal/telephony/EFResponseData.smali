.class public Lcom/android/internal/telephony/EFResponseData;
.super Ljava/lang/Object;
.source "EFResponseData.java"


# static fields
.field private static final RESPONSE_DATA_FILE_STATUS:I = 0xb


# instance fields
.field private mFileStatus:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/16 v0, 0xb

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/EFResponseData;->mFileStatus:I

    .line 61
    return-void
.end method


# virtual methods
.method public getFileStatus()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/telephony/EFResponseData;->mFileStatus:I

    return v0
.end method
