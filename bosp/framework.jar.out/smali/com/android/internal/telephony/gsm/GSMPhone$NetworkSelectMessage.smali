.class Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
.super Ljava/lang/Object;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkSelectMessage"
.end annotation


# instance fields
.field public message:Landroid/os/Message;

.field public operatorAlphaLong:Ljava/lang/String;

.field public operatorNumeric:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 1368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1370
    return-void
.end method
