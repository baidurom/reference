.class public Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;
.super Ljava/lang/Object;
.source "UtkCmdMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallSettings"
.end annotation


# instance fields
.field public callMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

.field public confirmMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

.field public setupMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage$CallSettings;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkCmdMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
