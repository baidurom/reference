.class public Lcom/baidu/voiceprint/SpeakerRec;
.super Ljava/lang/Object;
.source "SpeakerRec.java"


# static fields
.field public static final DATA_NOT_VALID:I = 0x1

.field public static final DATA_TOO_MUCH:I = 0x4

.field public static final ENROLL_PRIVATE:I = 0x1

.field public static final ENROLL_PUBLIC:I = 0x0

.field public static final FILE_WRITING_ERROR:I = 0x5

.field public static final MODEL_LOADING_FAILED:I = 0x2

.field public static final MORE_DATA_REQUIRED:I = 0x3

.field public static final OTHER_ERROR:I = 0x6

.field public static final PRIVATE:I = 0x2

.field public static final PUBLIC:I = 0x1

.field public static final REJECT:I = 0x0

.field public static final SUCCESSFUL:I = 0x0

.field public static final TEST:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "SpeakerRec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native speakerAddToBuffer([SII)I
.end method

.method public static final native speakerClearCurrUtterance()I
.end method

.method public static final native speakerClearSession()I
.end method

.method public static final native speakerEnroll()I
.end method

.method public static final native speakerGetDecision()I
.end method

.method public static final native speakerGetScore()F
.end method

.method public static final native speakerInit(ILjava/lang/String;)I
.end method

.method public static final native speakerInitNewTest()I
.end method

.method public static final native speakerTest()I
.end method
