.class public Landroid/nfc/wps/ConfigurationToken;
.super Ljava/lang/Object;
.source "ConfigurationToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field static final TAG:Ljava/lang/String; = "ConfigurationToken"

.field public static mCONFIGURATIONTOKEN_VERSION_10:B

.field public static mCONFIGURATION_ATTRIBUTE_ID_AUTHENTICATION_TYPE:[B

.field public static mCONFIGURATION_ATTRIBUTE_ID_CRIDENTIAL:[B

.field public static mCONFIGURATION_ATTRIBUTE_ID_ENCRYPTION_TYPE:[B

.field public static mCONFIGURATION_ATTRIBUTE_ID_MAC_ADDRESS:[B

.field public static mCONFIGURATION_ATTRIBUTE_ID_NETWORK_INDEX:[B

.field public static mCONFIGURATION_ATTRIBUTE_ID_NETWORK_KEY:[B

.field public static mCONFIGURATION_ATTRIBUTE_ID_SSID:[B

.field public static mCONFIGURATION_ATTRIBUTE_ID_VERSION:[B


# instance fields
.field private mAuthenticationType:[B

.field private mEncryptionType:[B

.field private mMacAddress:[B

.field private mNetworkIndex:[B

.field private mNetworkKey:[B

.field private mSSID:[B

.field private mVendorExtension:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 11
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATION_ATTRIBUTE_ID_VERSION:[B

    .line 13
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATION_ATTRIBUTE_ID_CRIDENTIAL:[B

    .line 15
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATION_ATTRIBUTE_ID_NETWORK_INDEX:[B

    .line 17
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATION_ATTRIBUTE_ID_SSID:[B

    .line 19
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATION_ATTRIBUTE_ID_AUTHENTICATION_TYPE:[B

    .line 21
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATION_ATTRIBUTE_ID_ENCRYPTION_TYPE:[B

    .line 23
    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATION_ATTRIBUTE_ID_NETWORK_KEY:[B

    .line 25
    new-array v0, v1, [B

    fill-array-data v0, :array_7

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATION_ATTRIBUTE_ID_MAC_ADDRESS:[B

    .line 28
    const/16 v0, 0x10

    sput-byte v0, Landroid/nfc/wps/ConfigurationToken;->mCONFIGURATIONTOKEN_VERSION_10:B

    .line 143
    new-instance v0, Landroid/nfc/wps/ConfigurationToken$1;

    invoke-direct {v0}, Landroid/nfc/wps/ConfigurationToken$1;-><init>()V

    sput-object v0, Landroid/nfc/wps/ConfigurationToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 11
    nop

    :array_0
    .array-data 0x1
        0x10t
        0x4at
    .end array-data

    .line 13
    nop

    :array_1
    .array-data 0x1
        0x10t
        0xet
    .end array-data

    .line 15
    nop

    :array_2
    .array-data 0x1
        0x10t
        0x26t
    .end array-data

    .line 17
    nop

    :array_3
    .array-data 0x1
        0x10t
        0x45t
    .end array-data

    .line 19
    nop

    :array_4
    .array-data 0x1
        0x10t
        0x3t
    .end array-data

    .line 21
    nop

    :array_5
    .array-data 0x1
        0x10t
        0xft
    .end array-data

    .line 23
    nop

    :array_6
    .array-data 0x1
        0x10t
        0x27t
    .end array-data

    .line 25
    nop

    :array_7
    .array-data 0x1
        0x10t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mVendorExtension:[B

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mVendorExtension:[B

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkIndex:[B

    .line 49
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkIndex:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mSSID:[B

    .line 51
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mSSID:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mAuthenticationType:[B

    .line 53
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mAuthenticationType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mEncryptionType:[B

    .line 55
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mEncryptionType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkKey:[B

    .line 57
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mMacAddress:[B

    .line 59
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mMacAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mVendorExtension:[B

    .line 61
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mVendorExtension:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthType()[B
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mAuthenticationType:[B

    return-object v0
.end method

.method public getEncrypType()[B
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mEncryptionType:[B

    return-object v0
.end method

.method public getMacAddress()[B
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mMacAddress:[B

    return-object v0
.end method

.method public getNetworkIndex()[B
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkIndex:[B

    return-object v0
.end method

.method public getNetworkKey()[B
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkKey:[B

    return-object v0
.end method

.method public getSSID()[B
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mSSID:[B

    return-object v0
.end method

.method public getVendorExtension()[B
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mVendorExtension:[B

    return-object v0
.end method

.method public setAuthType([B)V
    .locals 0
    .parameter "authenticationType"

    .prologue
    .line 91
    iput-object p1, p0, Landroid/nfc/wps/ConfigurationToken;->mAuthenticationType:[B

    .line 92
    return-void
.end method

.method public setEncrypType([B)V
    .locals 0
    .parameter "encryptionType"

    .prologue
    .line 95
    iput-object p1, p0, Landroid/nfc/wps/ConfigurationToken;->mEncryptionType:[B

    .line 96
    return-void
.end method

.method public setMacAddress([B)V
    .locals 0
    .parameter "macAddress"

    .prologue
    .line 103
    iput-object p1, p0, Landroid/nfc/wps/ConfigurationToken;->mMacAddress:[B

    .line 104
    return-void
.end method

.method public setNetworkIndex([B)V
    .locals 0
    .parameter "networkIndex"

    .prologue
    .line 83
    iput-object p1, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkIndex:[B

    .line 84
    return-void
.end method

.method public setNetworkKey([B)V
    .locals 0
    .parameter "networkKey"

    .prologue
    .line 99
    iput-object p1, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkKey:[B

    .line 100
    return-void
.end method

.method public setSSID([B)V
    .locals 0
    .parameter "ssid"

    .prologue
    .line 87
    iput-object p1, p0, Landroid/nfc/wps/ConfigurationToken;->mSSID:[B

    .line 88
    return-void
.end method

.method public setVendorExtension([B)V
    .locals 0
    .parameter "vendorExtension"

    .prologue
    .line 107
    iput-object p1, p0, Landroid/nfc/wps/ConfigurationToken;->mVendorExtension:[B

    .line 108
    return-void
.end method

.method public testPrint()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkIndex:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkIndex:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 67
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mSSID:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mSSID:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 69
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mAuthenticationType:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mAuthenticationType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 71
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mEncryptionType:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mEncryptionType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 73
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkKey:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mNetworkKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 75
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mMacAddress:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mMacAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 77
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mVendorExtension:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Landroid/nfc/wps/ConfigurationToken;->mVendorExtension:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 79
    return-void
.end method
