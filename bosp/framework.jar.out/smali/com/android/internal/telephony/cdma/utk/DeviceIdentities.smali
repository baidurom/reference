.class Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
.super Lcom/android/internal/telephony/cdma/utk/ValueObject;
.source "CommandDetails.java"


# instance fields
.field public destinationId:I

.field public sourceId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ValueObject;-><init>()V

    return-void
.end method


# virtual methods
.method getTag()Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    return-object v0
.end method
