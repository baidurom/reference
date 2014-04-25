.class Lcom/android/phone/PhoneRecorderHandler$1;
.super Landroid/os/Handler;
.source "PhoneRecorderHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneRecorderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneRecorderHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneRecorderHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/phone/PhoneRecorderHandler$1;->this$0:Lcom/android/phone/PhoneRecorderHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 47
    return-void
.end method
