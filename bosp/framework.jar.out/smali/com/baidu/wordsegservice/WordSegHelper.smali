.class public Lcom/baidu/wordsegservice/WordSegHelper;
.super Ljava/lang/Object;
.source "WordSegHelper.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "JniWordSegService"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native wordSegmentForWord(Ljava/lang/String;II)[I
.end method
