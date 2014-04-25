.class public Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;
.super Ljava/lang/Object;
.source "ShakeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/ShakeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveParam"
.end annotation


# static fields
.field public static final DEFAULT_MOVE_AMPLITUDE:I = 0xa

.field public static final PARAM_NUM:I = 0x7

.field public static final POSITIVE_STR:Ljava/lang/String; = "positive"

.field public static final REVERSE_STR:Ljava/lang/String; = "reverse"

.field public static final SOLID:I = -0x1

.field public static final SOLID_STR:Ljava/lang/String; = "solid"

.field public static final X:I = 0x0

.field public static final X_POSITIVE:I = 0x0

.field public static final X_REVERSE:I = 0x1

.field public static final Y:I = 0x1

.field public static final Y_POSITIVE:I = 0x2

.field public static final Y_REVERSE:I = 0x3


# instance fields
.field public mDelay:I

.field public mDuration:I

.field public mMoveAmplitude:I

.field public mXDirection:I

.field public mXOriginal:I

.field public mYDirection:I

.field public mYOriginal:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 1
    .parameter "xDirection"
    .parameter "yDirection"
    .parameter "moveAmplitude"
    .parameter "xOriginal"
    .parameter "yOriginal"
    .parameter "delay"
    .parameter "duration"

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mMoveAmplitude:I

    .line 194
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mXDirection:I

    .line 195
    iput p2, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mYDirection:I

    .line 196
    iput p3, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mMoveAmplitude:I

    .line 197
    iput p4, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mXOriginal:I

    .line 198
    iput p5, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mYOriginal:I

    .line 199
    iput p6, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mDelay:I

    .line 200
    iput p7, p0, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;->mDuration:I

    .line 201
    return-void
.end method
