.class Lcom/android/internal/telephony/cdma/utk/ItemsIconId;
.super Lcom/android/internal/telephony/cdma/utk/ValueObject;
.source "CommandDetails.java"


# instance fields
.field recordNumbers:[I

.field selfExplanatory:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ValueObject;-><init>()V

    return-void
.end method


# virtual methods
.method getTag()Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    return-object v0
.end method
