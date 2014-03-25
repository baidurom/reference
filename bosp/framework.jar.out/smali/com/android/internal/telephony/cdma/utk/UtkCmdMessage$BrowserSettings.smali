.class public Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;
.super Ljava/lang/Object;
.source "UtkCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrowserSettings"
.end annotation


# instance fields
.field public mode:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$BrowserSettings;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
