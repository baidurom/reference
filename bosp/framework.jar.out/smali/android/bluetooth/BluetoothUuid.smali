.class public final Landroid/bluetooth/BluetoothUuid;
.super Ljava/lang/Object;
.source "BluetoothUuid.java"


# static fields
.field public static final AdvAudioDist:Landroid/os/ParcelUuid;

.field public static final AudioSink:Landroid/os/ParcelUuid;

.field public static final AudioSource:Landroid/os/ParcelUuid;

.field public static final AvrcpController:Landroid/os/ParcelUuid;

.field public static final AvrcpTarget:Landroid/os/ParcelUuid;

.field public static final BNEP:Landroid/os/ParcelUuid;

.field public static final BipResponder:Landroid/os/ParcelUuid;

.field public static final BppReceiver:Landroid/os/ParcelUuid;

.field public static final HSP:Landroid/os/ParcelUuid;

.field public static final HSP_AG:Landroid/os/ParcelUuid;

.field public static final Handsfree:Landroid/os/ParcelUuid;

.field public static final Handsfree_AG:Landroid/os/ParcelUuid;

.field public static final Hid:Landroid/os/ParcelUuid;

.field public static final NAP:Landroid/os/ParcelUuid;

.field public static final ObexFileTransfer:Landroid/os/ParcelUuid;

.field public static final ObexObjectPush:Landroid/os/ParcelUuid;

.field public static final PANU:Landroid/os/ParcelUuid;

.field public static final PBAP_PSE:Landroid/os/ParcelUuid;

.field public static final Proximity:Landroid/os/ParcelUuid;

.field public static final RESERVED_UUIDS:[Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-string v0, "0000110B-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    .line 39
    const-string v0, "0000110A-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    .line 41
    const-string v0, "0000110D-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    .line 43
    const-string v0, "00001108-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    .line 45
    const-string v0, "00001112-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    .line 47
    const-string v0, "0000111E-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    .line 49
    const-string v0, "0000111F-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    .line 51
    const-string v0, "0000110E-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    .line 53
    const-string v0, "0000110C-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    .line 55
    const-string v0, "00001105-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    .line 57
    const-string v0, "00001124-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    .line 59
    const-string v0, "00001115-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    .line 61
    const-string v0, "00001116-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    .line 63
    const-string v0, "0000000f-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    .line 65
    const-string v0, "0000112f-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    .line 69
    const-string v0, "00001118-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->BppReceiver:Landroid/os/ParcelUuid;

    .line 71
    const-string v0, "0000111B-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->BipResponder:Landroid/os/ParcelUuid;

    .line 73
    const-string v0, "00001803-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->Proximity:Landroid/os/ParcelUuid;

    .line 75
    const-string v0, "00001106-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->ObexFileTransfer:Landroid/os/ParcelUuid;

    .line 79
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Landroid/bluetooth/BluetoothUuid;->RESERVED_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAllUuids([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 8
    .parameter "uuidA"
    .parameter "uuidB"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 179
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v5

    .line 181
    :cond_1
    if-nez p0, :cond_2

    .line 182
    array-length v7, p1

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 185
    :cond_2
    if-eqz p1, :cond_0

    .line 187
    new-instance v4, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 188
    .local v4, uuidSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/os/ParcelUuid;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 189
    .local v3, uuid:Landroid/os/ParcelUuid;
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v5, v6

    goto :goto_0

    .line 188
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 8
    .parameter "uuidA"
    .parameter "uuidB"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 153
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v5

    .line 155
    :cond_1
    if-nez p0, :cond_2

    .line 156
    array-length v7, p1

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 159
    :cond_2
    if-nez p1, :cond_3

    .line 160
    array-length v7, p0

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 163
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 164
    .local v4, uuidSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/os/ParcelUuid;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 165
    .local v3, uuid:Landroid/os/ParcelUuid;
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #uuid:Landroid/os/ParcelUuid;
    :cond_4
    move v5, v6

    .line 167
    goto :goto_0
.end method

.method public static getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I
    .locals 7
    .parameter "parcelUuid"

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 203
    .local v0, uuid:Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    const-wide v5, 0xffff00000000L

    and-long/2addr v3, v5

    const/16 v5, 0x20

    ushr-long v1, v3, v5

    .line 204
    .local v1, value:J
    long-to-int v3, v1

    return v3
.end method

.method public static isAdvAudioDist(Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "uuid"

    .prologue
    .line 92
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAudioSink(Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "uuid"

    .prologue
    .line 88
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAudioSource(Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "uuid"

    .prologue
    .line 84
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAvrcpController(Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "uuid"

    .prologue
    .line 104
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpController:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAvrcpTarget(Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "uuid"

    .prologue
    .line 108
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AvrcpTarget:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBnep(Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "uuid"

    .prologue
    .line 124
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->BNEP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHandsfree(Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "uuid"

    .prologue
    .line 96
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHeadset(Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "uuid"

    .prologue
    .line 100
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInputDevice(Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "uuid"

    .prologue
    .line 112
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNap(Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "uuid"

    .prologue
    .line 120
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPanu(Landroid/os/ParcelUuid;)Z
    .locals 1
    .parameter "uuid"

    .prologue
    .line 116
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z
    .locals 7
    .parameter "uuidArray"
    .parameter "uuid"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 133
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_2

    :cond_0
    if-nez p1, :cond_2

    move v4, v5

    .line 142
    :cond_1
    :goto_0
    return v4

    .line 136
    :cond_2
    if-eqz p0, :cond_1

    .line 139
    move-object v0, p0

    .local v0, arr$:[Landroid/os/ParcelUuid;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 140
    .local v1, element:Landroid/os/ParcelUuid;
    invoke-virtual {v1, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    goto :goto_0

    .line 139
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
