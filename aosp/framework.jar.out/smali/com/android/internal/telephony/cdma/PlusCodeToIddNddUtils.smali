.class public Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;
.super Ljava/lang/Object;
.source "PlusCodeToIddNddUtils.java"


# static fields
.field public static final INTERNATIONAL_PREFIX_SYMBOL:Ljava/lang/String; = "+"

.field private static a:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

.field private static b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

.field private static c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

.field private static final d:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getInstance()Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->a:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    .line 33
    invoke-static {}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getInstance()Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 149
    sget-object v0, Lcom/android/internal/telephony/cdma/TelephonyPlusCode;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    sput-object v0, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->d:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 88
    .local v1, formatNumber:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    if-eqz v3, :cond_0

    .line 89
    sget-object v3, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    iget-object v2, v3, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Cc:Ljava/lang/String;

    .line 90
    .local v2, sCC:Ljava/lang/String;
    const-string v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number auto format correctly, mccIddNddSid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/MccIddNddSid;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CC dismatch, remove +(already erased before), add IDD formatNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v2           #sCC:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 97
    .restart local v2       #sCC:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Ndd:Ljava/lang/String;

    .line 98
    .local v0, Ndd:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 99
    const-string v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isMobileNumber] number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {v2, p0}, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    const-string v3, "PlusCodeToIddNddUtils"

    const-string v4, "CC matched, isMobile = true Ndd = "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v0, ""

    .line 104
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CC matched, remove +(already erased before) and CC, add NDD formatNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "sCC"
    .parameter "number"

    .prologue
    .line 152
    const-string v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isMobileNumber] number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sCC = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 154
    :cond_0
    const-string v6, "PlusCodeToIddNddUtils"

    const-string v7, "[isMobileNumber] please check the param "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v3, 0x0

    .line 189
    :cond_1
    :goto_0
    return v3

    .line 157
    :cond_2
    const/4 v3, 0x0

    .line 159
    .local v3, isMobile:Z
    sget-object v6, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->d:Landroid/util/SparseIntArray;

    if-nez v6, :cond_3

    .line 160
    const-string v6, "PlusCodeToIddNddUtils"

    const-string v7, "[isMobileNumber] MOBILE_NUMBER_SPEC_MAP == null "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 167
    .local v5, size:I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 173
    .local v2, iCC:I
    const-string v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isMobileNumber] iCC = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 175
    const-string v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isMobileNumber] value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", key =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v6, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-ne v6, v2, :cond_4

    .line 178
    const-string v6, "PlusCodeToIddNddUtils"

    const-string v7, "[isMobileNumber]  value = icc"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v6, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, prfix:Ljava/lang/String;
    const-string v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isMobileNumber]  prfix = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 182
    const-string v6, "PlusCodeToIddNddUtils"

    const-string v7, "[isMobileNumber]  number.startsWith(prfix) = true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v3, 0x1

    .line 184
    goto/16 :goto_0

    .line 168
    .end local v1           #i:I
    .end local v2           #iCC:I
    .end local v4           #prfix:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "PlusCodeToIddNddUtils"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #i:I
    .restart local v2       #iCC:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static canFormatPlusCodeForSms()Z
    .locals 5

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, canFormat:Z
    const-string v2, "cdma.icc.operator.mcc"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, mcc:Ljava/lang/String;
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[canFormatPlusCodeForSms] Mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 236
    sget-object v2, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    if-eqz v2, :cond_0

    .line 237
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[canFormatPlusCodeForSms] Mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    sget-object v2, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromTableByMcc(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/MccIddNddSid;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 240
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[canFormatPlusCodeForSms] getCcFromTableByMcc mccIddNddSid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object v2, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canFormatPlusToIddNdd()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 42
    const-string v9, "PlusCodeToIddNddUtils"

    const-string v10, "-------------canFormatPlusToIddNdd-------------"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v9, "cdma.operator.mcc"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, Mcc:Ljava/lang/String;
    const-string v9, "cdma.operator.sid"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, Sid:Ljava/lang/String;
    const-string v9, "cdma.operator.ltmoffset"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, Ltm_off:Ljava/lang/String;
    const-string v9, "PlusCodeToIddNddUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getProp from network] get property mcc1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sid1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ltm_off1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, Find:Z
    const/4 v9, 0x0

    sput-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 52
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    if-eqz v9, :cond_0

    .line 53
    const-string v9, "2134"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    move v5, v7

    .line 54
    .local v5, isValid:Z
    :goto_0
    const-string v9, "PlusCodeToIddNddUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[canFormatPlusToIddNdd] Mcc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", !Mcc.startsWith(2134) = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "000"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v5, :cond_3

    .line 57
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromTableByMcc(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/MccIddNddSid;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 58
    const-string v9, "PlusCodeToIddNddUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[canFormatPlusToIddNdd] getCcFromTableByMcc mccIddNddSid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    if-eqz v9, :cond_2

    move v0, v7

    .line 80
    .end local v5           #isValid:Z
    :cond_0
    :goto_1
    const-string v7, "PlusCodeToIddNddUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[canFormatPlusToIddNdd] find = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mccIddNddSid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v0

    :cond_1
    move v5, v8

    .line 53
    goto/16 :goto_0

    .restart local v5       #isValid:Z
    :cond_2
    move v0, v8

    .line 59
    goto :goto_1

    .line 61
    :cond_3
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getMccFromConflictTableBySid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 62
    .local v6, mcc_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_6

    .line 63
    :cond_4
    const-string v9, "PlusCodeToIddNddUtils"

    const-string v10, "[canFormatPlusToIddNdd] Do not find cc by SID from confilcts table, so from lookup table"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromMINSTableBySid(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/MccIddNddSid;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 65
    const-string v9, "PlusCodeToIddNddUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[canFormatPlusToIddNdd] getCcFromMINSTableBySid mccIddNddSid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_5
    :goto_2
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    if-eqz v9, :cond_9

    move v0, v7

    :goto_3
    goto :goto_1

    .line 66
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_8

    .line 67
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-virtual {v9, v6, v1}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromMINSTableByLTM(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, findMcc:Ljava/lang/String;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_7

    .line 69
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromTableByMcc(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/MccIddNddSid;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 71
    :cond_7
    const-string v9, "PlusCodeToIddNddUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[canFormatPlusToIddNdd] conflicts, getCcFromTableByMcc mccIddNddSid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 72
    .end local v4           #findMcc:Ljava/lang/String;
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v7, :cond_5

    .line 73
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 74
    .restart local v4       #findMcc:Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromTableByMcc(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/MccIddNddSid;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    .line 75
    const-string v9, "PlusCodeToIddNddUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[canFormatPlusToIddNdd] do not conflicts, getCcFromTableByMcc mccIddNddSid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v4           #findMcc:Ljava/lang/String;
    :cond_9
    move v0, v8

    .line 77
    goto :goto_3
.end method

.method public static checkMccBySidLtmOff(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "mccMnc"

    .prologue
    .line 327
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkMccBySidLtmOff] mccMnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v5, "cdma.operator.sid"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, Sid:Ljava/lang/String;
    const-string v5, "cdma.operator.ltmoffset"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, Ltm_off:Ljava/lang/String;
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkMccBySidLtmOff] Sid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Ltm_off = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sget-object v5, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v3, v0}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getMccFromConflictTableBySidLtmOff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, Mcc:Ljava/lang/String;
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkMccBySidLtmOff] MccFromConflictTable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    if-eqz v1, :cond_2

    .line 341
    move-object v4, v1

    .line 352
    .local v4, tempMcc:Ljava/lang/String;
    :goto_0
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkMccBySidLtmOff] tempMcc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v5, "310"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "311"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "312"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getMccMncFromSidMccMncListBySid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, MccMnc:Ljava/lang/String;
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkMccBySidLtmOff] MccMnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-eqz v2, :cond_1

    .line 360
    move-object v4, v2

    .line 364
    .end local v2           #MccMnc:Ljava/lang/String;
    :cond_1
    return-object v4

    .line 343
    .end local v4           #tempMcc:Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->b:Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/PlusCodeHpcdTable;->getMccFromMINSTableBySid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkMccBySidLtmOff] MccFromMINSTable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-eqz v1, :cond_3

    .line 346
    move-object v4, v1

    .restart local v4       #tempMcc:Ljava/lang/String;
    goto :goto_0

    .line 348
    .end local v4           #tempMcc:Ljava/lang/String;
    :cond_3
    move-object v4, p0

    .restart local v4       #tempMcc:Ljava/lang/String;
    goto :goto_0
.end method

.method public static removeIddNddAddPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "number"

    .prologue
    .line 198
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[removeIddNddAddPlusCode] befor format number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 200
    :cond_0
    const-string v5, "PlusCodeToIddNddUtils"

    const-string v6, "[removeIddNddAddPlusCode] please check the param "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local p0
    :goto_0
    return-object p0

    .line 204
    .restart local p0
    :cond_1
    move-object v2, p0

    .line 205
    .local v2, formatNumber:Ljava/lang/String;
    const/4 v4, 0x0

    .line 206
    .local v4, prefix:Ljava/lang/String;
    const/4 v0, 0x0

    .line 208
    .local v0, Find:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 209
    .local v3, length:I
    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 210
    invoke-static {}, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->canFormatPlusToIddNdd()Z

    move-result v0

    .line 212
    if-nez v0, :cond_2

    .line 213
    const-string v5, "PlusCodeToIddNddUtils"

    const-string v6, "[removeIddNddAddPlusCode] find no operator that match the MCC "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    if-eqz v5, :cond_3

    .line 218
    sget-object v5, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    iget-object v1, v5, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    .line 219
    .local v1, Idd:Ljava/lang/String;
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[removeIddNddAddPlusCode] find match the cc, Idd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 221
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    .end local v1           #Idd:Ljava/lang/String;
    :cond_3
    const-string v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[removeIddNddAddPlusCode] number after format = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v2

    .line 228
    goto/16 :goto_0
.end method

.method public static removeIddNddAddPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "number"

    .prologue
    .line 279
    const-string v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[removeIddNddAddPlusCodeForSms] befor format number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 281
    :cond_0
    const-string v6, "PlusCodeToIddNddUtils"

    const-string v7, "[removeIddNddAddPlusCodeForSms] please check the param "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p0

    .line 309
    :goto_0
    return-object v3

    .line 285
    :cond_1
    move-object v3, p0

    .line 286
    .local v3, formatNumber:Ljava/lang/String;
    const/4 v5, 0x0

    .line 287
    .local v5, prefix:Ljava/lang/String;
    const/4 v0, 0x0

    .line 289
    .local v0, Find:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 290
    .local v4, length:I
    const-string v6, "+"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 291
    invoke-static {}, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->canFormatPlusCodeForSms()Z

    move-result v2

    .line 292
    .local v2, camFormat:Z
    if-nez v2, :cond_2

    .line 293
    const-string v6, "PlusCodeToIddNddUtils"

    const-string v7, "[removeIddNddAddPlusCodeForSms] find no operator that match the MCC "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    if-eqz v6, :cond_3

    .line 298
    sget-object v6, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->c:Lcom/android/internal/telephony/cdma/MccIddNddSid;

    iget-object v1, v6, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    .line 299
    .local v1, Idd:Ljava/lang/String;
    const-string v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[removeIddNddAddPlusCodeForSms] find match the cc, Idd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_3

    .line 301
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 302
    const-string v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[removeIddNddAddPlusCodeForSms] sub num = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    .end local v1           #Idd:Ljava/lang/String;
    .end local v2           #camFormat:Z
    :cond_3
    const-string v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[removeIddNddAddPlusCodeForSms] number after format = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static replacePlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 249
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replacePlusCodeForSms number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 251
    :cond_0
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number can\'t format correctly, number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    :goto_0
    return-object v1

    .line 255
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->canFormatPlusCodeForSms()Z

    move-result v0

    .line 256
    .local v0, camFormat:Z
    if-eqz v0, :cond_1

    .line 261
    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number before remove plus char , number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 264
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number after   remove plus char , number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_3
    const/4 v1, 0x0

    .line 270
    .local v1, formatNumber:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 271
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static replacePlusCodeWithIddNdd(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 120
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replacePlusCodeWithIddNdd number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    :cond_0
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number can\'t format correctly, number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    :goto_0
    return-object v1

    .line 126
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->canFormatPlusToIddNdd()Z

    move-result v0

    .line 128
    .local v0, Find:Z
    if-eqz v0, :cond_1

    .line 133
    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number before remove plus char , number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 136
    const-string v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number after   remove plus char , number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_3
    const/4 v1, 0x0

    .line 142
    .local v1, formatNumber:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 143
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/PlusCodeToIddNddUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static setMccSidLtm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "mcc"
    .parameter "sid"
    .parameter "ltm_off"

    .prologue
    .line 39
    return-void
.end method
