.class public Lcom/baidu/android/vad/JNI;
.super Ljava/lang/Object;
.source "JNI.java"


# static fields
.field public static final MFE_ERROR_UNKNOWN:I = -0x64

.field public static final MFE_FORMAT_ADPCM_8K:I = 0x2

.field public static final MFE_FORMAT_AMR_16K:I = 0x7

.field public static final MFE_FORMAT_BV32_16K:I = 0x4

.field public static final MFE_FORMAT_BV32_8K:I = 0x0

.field public static final MFE_FORMAT_PCM_16K:I = 0x5

.field public static final MFE_FORMAT_PCM_8K:I = 0x1

.field public static final MFE_MEMALLOC_ERR:I = -0x6b

.field public static final MFE_PARAMRANGE_ERR:I = -0x6d

.field public static final MFE_POINTER_ERR:I = -0x67

.field public static final MFE_SEND_TOOMORE_DATA_ONCE:I = -0x76

.field public static final MFE_STATE_ERR:I = -0x66

.field public static final MFE_SUCCESS:I = 0x0

.field public static final MFE_VAD_INIT_ERROR:I = -0x78

.field public static final PARAM_ENERGY_THRESHOLD_EP:I = 0x7

.field public static final PARAM_ENERGY_THRESHOLD_SP:I = 0x6

.field public static final PARAM_MAX_SP_DURATION:I = 0x2

.field public static final PARAM_MAX_SP_PAUSE:I = 0x3

.field public static final PARAM_MAX_WAIT_DURATION:I = 0x1

.field public static final PARAM_MIN_SP_DURATION:I = 0x4

.field public static final PARAM_OFFSET:I = 0x8

.field public static final PARAM_SLEEP_TIMEOUT:I = 0x5

.field public static final PARAM_SPEECHIN_THRESHOLD_BIAS:I = 0xb

.field public static final PARAM_SPEECHOUT_THRESHOLD_BIAS:I = 0xc

.field public static final PARAM_SPEECH_END:I = 0x9

.field public static final PARAM_SPEECH_MODE:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const-string v0, "voiceSpeechVad"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native mfeClose()I
.end method

.method public native mfeDetect()I
.end method

.method public native mfeEnableNoiseDetection(Z)I
.end method

.method public native mfeExit()I
.end method

.method public native mfeGetCallbackData([BI)I
.end method

.method public native mfeGetParam(I)I
.end method

.method public native mfeInit(II)I
.end method

.method public native mfeOpen()I
.end method

.method public native mfeSendData([SI)I
.end method

.method public native mfeSetLogLevel(I)V
.end method

.method public native mfeSetParam(II)I
.end method

.method public native mfeStart()I
.end method

.method public native mfeStop()I
.end method
