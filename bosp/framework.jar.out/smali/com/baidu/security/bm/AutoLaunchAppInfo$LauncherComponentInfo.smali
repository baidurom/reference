.class public Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;
.super Ljava/lang/Object;
.source "AutoLaunchAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/security/bm/AutoLaunchAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LauncherComponentInfo"
.end annotation


# instance fields
.field public mActions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mComponentName:Landroid/content/ComponentName;

.field public mEnabled:Z

.field public mLaunchFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/security/bm/AutoLaunchAppInfo$LauncherComponentInfo;->mActions:Ljava/util/LinkedList;

    return-void
.end method
