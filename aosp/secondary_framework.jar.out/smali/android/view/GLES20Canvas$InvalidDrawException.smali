.class public Landroid/view/GLES20Canvas$InvalidDrawException;
.super Ljava/lang/RuntimeException;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidDrawException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1190
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1191
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1193
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1194
    return-void
.end method
