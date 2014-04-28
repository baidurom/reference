.class public Landroid/telephony/MSimTelephonyManager;
.super Landroid/telephony/TelephonyManager;
.source "MSimTelephonyManager.java"


# static fields
.field private static sInstance:Landroid/telephony/MSimTelephonyManager;

# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Landroid/telephony/MSimTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/MSimTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/MSimTelephonyManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    const-string/jumbo v0, "phone"
    
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/MSimTelephonyManager;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method public static getNetworkType(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1044
    const/4 v0, 0x0
    
    return v0  
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 335
    invoke-static {p0}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneTypeFromNetworkType(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    .line 229
    const-string/jumbo v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, mode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    .line 233
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPhoneTypeFromProperty(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    .line 216
    const-string v1, "gsm.current.phone-type"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, type:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 221
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v1

    goto :goto_0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "property"
    .parameter "index"
    .parameter "defaultVal"

    .prologue
    .line 833
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 834
    invoke-static {p0, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 846
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 837
    .restart local p2
    :cond_1
    const/4 v1, 0x0

    .line 838
    .local v1, propVal:Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, prop:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 841
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 842
    .local v2, values:[Ljava/lang/String;
    if-ltz p1, :cond_2

    array-length v3, v2

    if-ge p1, v3, :cond_2

    aget-object v3, v2, p1

    if-eqz v3, :cond_2

    .line 843
    aget-object v1, v2, p1

    .line 846
    .end local v2           #values:[Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_0

    move-object p2, v1

    goto :goto_0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "property"
    .parameter "defaultVal"

    .prologue
    .line 818
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 819
    .local v0, prop:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 820
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, values:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 823
    .end local v1           #values:[Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method public static isMultiSimEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 96
    const-string/jumbo v2, "ro.telephony.coolpad_single"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 98
    .local v0, is_coolpad5890_spec:Z
    sget-object v2, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v3, "dsds"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/telephony/MSimTelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string v3, "dsda"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "property"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 855
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 856
    invoke-static {p0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    const-string v3, ""

    .line 861
    .local v3, propVal:Ljava/lang/String;
    const/4 v1, 0x0

    .line 862
    .local v1, p:[Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 864
    .local v2, prop:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 865
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 868
    :cond_2
    if-ltz p1, :cond_0

    .line 870
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_4

    .line 871
    const-string v4, ""

    .line 872
    .local v4, str:Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v5, v1

    if-ge v0, v5, :cond_3

    .line 873
    aget-object v4, v1, v0

    .line 875
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 878
    .end local v4           #str:Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 879
    if-eqz v1, :cond_5

    .line 880
    add-int/lit8 v0, p1, 0x1

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_5

    .line 881
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 880
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 884
    :cond_5
    invoke-static {p0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

# virtual methods
.method public getAllCellInfo()Ljava/util/List;
    .locals 1



    .prologue
    .line 803
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;
    
    move-result-object v0

    return-object v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 1215
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1216
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1218
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getCallState(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCallState(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCallState()I
    
    move-result v0
    
    return v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1152
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCardType()Ljava/lang/String;

    move-result-object v0

    .line 1155
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getCardType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCardType(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCardType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1224
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex()I

    move-result v0

    .line 1227
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getCdmaEriIconIndex(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1233
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1234
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode()I

    move-result v0

    .line 1236
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getCdmaEriIconMode(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1242
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1243
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    .line 1245
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getCdmaEriText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 999
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 1002
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v0

    goto :goto_0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 1
    .parameter "subscription"

    .prologue
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0
    
    return-object v0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1188
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1189
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 1191
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getCompleteVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPhoneType()I
    .locals 1

    .prologue
    .line 1008
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1009
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1011
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPhoneType(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    return v0
.end method

.method public getDataActivity()I
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0

.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 990
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 991
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 993
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    

    move-result-object v0
    
    return-object v0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 981
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 982
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 984
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 981
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0
    
    return-object v0
.end method

.method public getIccCardType(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 981
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getIccCardType()Ljava/lang/String;

    move-result-object v0
    
    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1170
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1171
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 1173
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1170

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1161
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1162
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1164
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue

    .line 1162
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 1134
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    .line 1137
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getLteOnCdmaMode(I)I

    move-result v0

    goto :goto_0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1135
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method protected getMSimSubscriberInfo()Lcom/android/internal/telephony/msim/IPhoneSubInfoMSim;
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0
    

    return-object v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1044
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1047
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 1052
    const-string v0, "gsm.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkName(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1301
    const/4 v0, 0x0

    return-object v0

.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1026
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 1029
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 268
    const-string v0, "gsm.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1017
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 1020
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 253
    const-string v0, "gsm.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 1057
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 1060
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1066
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1067
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    .line 1069
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/MSimTelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneCount()I
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x1

    .line 108
    .local v0, phoneCount:I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const/4 v0, 0x2

    .line 111
    :cond_0
    return v0
.end method

.method public getPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0
    
    return v0
.end method

.method public getPreferredVoiceSubscription()I
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0
    
    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1111
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1112
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 1114
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 1119
    const-string v0, "gsm.sim.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1093
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1096
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 952
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1102
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1103
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 1105
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1044

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1125
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1126
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 1128
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1044

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()I
    .locals 1

    .prologue
    .line 1084
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1085
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 1087
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getAvailableSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v0

    goto :goto_0
.end method

.method public getAvailableSlotId()I
    .locals 5

    .prologue
    const/4 v3, 0x5

    .line 1311
    const/4 v0, 0x0

    .line 1312
    .local v0, slotId:I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_0     


    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v1

    if-eq v1, v3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1314
    const/4 v0, 0x1

    .line 1316
    :cond_0
    return v0
.end method

.method public getSimState(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 1044

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1143
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1146
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1044

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0

.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1206
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1207
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 1209
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1044

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1179
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1180
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 1182
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1044

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1197
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1198
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount()I

    move-result v0

    .line 1200
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getVoiceMessageCount(I)I

    move-result v0

    goto :goto_0
.end method

.method public getVoiceMessageCount(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1044

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 1075
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .line 1078
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    goto :goto_0
.end method

.method public hasIccCard(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1044

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 1035
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    invoke-super {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 1038
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 280
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSubActive(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isValidSimState(I)Z
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x1

    .line 1256
    invoke-virtual {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v0

    .line 1257
    .local v0, simState:I
    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    if-ne v2, v0, :cond_1

    .line 1259
    :cond_0
    const/4 v1, 0x0

    .line 1261
    :cond_1
    return v1
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 728
    invoke-super {p0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    
    return-void
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method
