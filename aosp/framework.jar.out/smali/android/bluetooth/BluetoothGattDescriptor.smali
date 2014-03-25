.class public Landroid/bluetooth/BluetoothGattDescriptor;
.super Ljava/lang/Object;
.source "BluetoothGattDescriptor.java"


# static fields
.field public static final DISABLE_NOTIFICATION_VALUE:[B = null

.field public static final ENABLE_INDICATION_VALUE:[B = null

.field public static final ENABLE_NOTIFICATION_VALUE:[B = null

.field public static final PERMISSION_READ:I = 0x1

.field public static final PERMISSION_READ_ENCRYPTED:I = 0x2

.field public static final PERMISSION_READ_ENCRYPTED_MITM:I = 0x4

.field public static final PERMISSION_WRITE:I = 0x10

.field public static final PERMISSION_WRITE_ENCRYPTED:I = 0x20

.field public static final PERMISSION_WRITE_ENCRYPTED_MITM:I = 0x40

.field public static final PERMISSION_WRITE_SIGNED:I = 0x80

.field public static final PERMISSION_WRITE_SIGNED_MITM:I = 0x100


# instance fields
.field protected mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field protected mPermissions:I

.field protected mUuid:Ljava/util/UUID;

.field protected mValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 34
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    .line 39
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    .line 44
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    return-void

    .line 34
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x0t
    .end array-data

    .line 39
    nop

    :array_1
    .array-data 0x1
        0x2t
        0x0t
    .end array-data

    .line 44
    nop

    :array_2
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;I)V
    .locals 0
    .parameter "characteristic"
    .parameter "uuid"
    .parameter "permissions"

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattDescriptor;->initDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;I)V
    .locals 1
    .parameter "uuid"
    .parameter "permissions"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->initDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;I)V

    .line 121
    return-void
.end method

.method private initDescriptor(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/UUID;I)V
    .locals 0
    .parameter "characteristic"
    .parameter "uuid"
    .parameter "permissions"

    .prologue
    .line 138
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 139
    iput-object p2, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mUuid:Ljava/util/UUID;

    .line 140
    iput p3, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mPermissions:I

    .line 141
    return-void
.end method


# virtual methods
.method public getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method public getPermissions()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mPermissions:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mValue:[B

    return-object v0
.end method

.method setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .parameter "characteristic"

    .prologue
    .line 156
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 157
    return-void
.end method

.method public setValue([B)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 204
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattDescriptor;->mValue:[B

    .line 205
    const/4 v0, 0x1

    return v0
.end method
