.class public final Lyi/util/YiSettings;
.super Ljava/lang/Object;
.source "YiSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/util/YiSettings$System;
    }
.end annotation


# static fields
.field public static final ACTION_RINGTONE_PICKER_CUSTOM:Ljava/lang/String; = "yi.intent.action.RINGTONE_PICKER_CUSTOM"

.field public static final ACTION_RINGTONE_PICKER_SYSTEM:Ljava/lang/String; = "yi.intent.action.RINGTONE_PICKER_SYSTEM"

.field public static final ERROR_SDBUSY:I = 0x3

.field public static final ERROR_SDEMPTY:I = 0x2

.field public static final ERROR_SDUNMOUNT:I = 0x1

.field public static final EXTRA_RINGTONE_ERROR_FLAG:Ljava/lang/String; = "android.intent.extra.ringtone.ERROR_FLAG"

.field public static PKG_NOT_FLITER_NOTIFICATION:[Ljava/lang/String; = null

.field public static final TYPE_MESSAGE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.baidu.android.ota"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.baidu.yi.userfeedback"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.baidu.bsf.service"

    aput-object v2, v0, v1

    sput-object v0, Lyi/util/YiSettings;->PKG_NOT_FLITER_NOTIFICATION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method
