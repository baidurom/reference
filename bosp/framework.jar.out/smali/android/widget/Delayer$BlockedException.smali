.class public Landroid/widget/Delayer$BlockedException;
.super Ljava/lang/Exception;
.source "Delayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Delayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Delayer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/widget/Delayer$BlockedException;-><init>()V

    return-void
.end method
