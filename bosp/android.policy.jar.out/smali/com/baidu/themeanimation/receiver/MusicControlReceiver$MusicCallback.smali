.class Lcom/baidu/themeanimation/receiver/MusicControlReceiver$MusicCallback;
.super Ljava/lang/Object;
.source "MusicControlReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/receiver/MusicControlReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MusicCallback"
.end annotation


# instance fields
.field mMethod:Ljava/lang/reflect/Method;

.field mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0
    .parameter "object"
    .parameter "method"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/baidu/themeanimation/receiver/MusicControlReceiver$MusicCallback;->mObject:Ljava/lang/Object;

    .line 40
    iput-object p2, p0, Lcom/baidu/themeanimation/receiver/MusicControlReceiver$MusicCallback;->mMethod:Ljava/lang/reflect/Method;

    .line 41
    return-void
.end method
