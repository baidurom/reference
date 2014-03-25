.class public Landroid/net/wifi/p2p/WifiP2pWfdInfo;
.super Ljava/lang/Object;
.source "WifiP2pWfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CONTENT_PROTECTION_SUPPORT:I = 0x100

.field private static final COUPLED_SINK_SUPPORT_AT_SINK:I = 0x8

.field private static final COUPLED_SINK_SUPPORT_AT_SOURCE:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pWfdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_TYPE:I = 0x3

.field public static final DISCONNECTED:I = 0x0

.field public static final PAUSE:I = 0x3

.field public static final PLAY:I = 0x2

.field public static final PRIMARY_SINK:I = 0x1

.field public static final SECONDARY_SINK:I = 0x2

.field private static final SESSION_AVAILABLE:I = 0x30

.field private static final SESSION_AVAILABLE_BIT1:I = 0x10

.field private static final SESSION_AVAILABLE_BIT2:I = 0x20

.field public static final SETUP:I = 0x1

.field public static final SOURCE_OR_PRIMARY_SINK:I = 0x3

.field public static final STANDBY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiP2pWfdInfo"

.field public static final WFD_SOURCE:I


# instance fields
.field private mCtrlPort:I

.field private mDeviceInfo:I

.field private mMaxThroughput:I

.field private mWfdEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "devInfo"
    .parameter "ctrlPort"
    .parameter "maxTput"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 68
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 69
    iput p2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 70
    iput p3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    if-eqz p1, :cond_0

    .line 181
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 182
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 183
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 185
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getControlPort()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    return v0
.end method

.method public getDeviceInfoHex()Ljava/lang/String;
    .locals 4

    .prologue
    .line 161
    const-string v0, "%04x%04x%04x%04x"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getMaxThroughput()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    return v0
.end method

.method public isContentProtected()Z
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoupledSinkSupportedAtSink()Z
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoupledSinkSupportedAtSource()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSessionAvailable()Z
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, 0x30

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWfdEnabled()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 200
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentProtected(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setControlPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 149
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 150
    return-void
.end method

.method public setCoupledSinkSupportAtSink(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setCoupledSinkSupportAtSource(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setDeviceType(I)Z
    .locals 1
    .parameter "deviceType"

    .prologue
    .line 86
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 87
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxThroughput(I)V
    .locals 0
    .parameter "maxThroughput"

    .prologue
    .line 153
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 154
    return-void
.end method

.method public setSessionAvailable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 138
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    and-int/lit8 v0, v0, -0x31

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    goto :goto_0
.end method

.method public setWfdEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 78
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string v1, " WFD enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 167
    const-string v1, "\n WFD DeviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 168
    const-string v1, "\n WFD CtrlPort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 169
    const-string v1, "\n WFD MaxThroughput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 189
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mWfdEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
