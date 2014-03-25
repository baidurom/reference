.class public Lcom/android/internal/telephony/MessageWaitingIndication;
.super Ljava/lang/Object;
.source "MessageWaitingIndication.java"


# static fields
.field public static final ELT_ID_SPECIAL_SMS_MESSAGE_INDICATION:I = 0x1

.field public static final MWI_PROFILE_ID_1:I = 0x0

.field public static final MWI_PROFILE_ID_2:I = 0x1

.field public static final MWI_PROFILE_ID_3:I = 0x2

.field public static final MWI_PROFILE_ID_4:I = 0x3

.field public static final MWI_TYPE_EMAIL:I = 0x2

.field public static final MWI_TYPE_EXT_VEDIO:I = 0x7

.field public static final MWI_TYPE_FAX:I = 0x1

.field public static final MWI_TYPE_VOICEMAIL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MWI"


# instance fields
.field private mwiCount:I

.field private mwiDontStore:Z

.field private mwiProfileId:I

.field private mwiType:I


# direct methods
.method public constructor <init>(II)V
    .locals 9
    .parameter "octet1"
    .parameter "octet2"

    .prologue
    const/16 v8, 0xff

    const/4 v1, 0x1

    const/4 v7, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiDontStore:Z

    .line 58
    iput v7, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiType:I

    .line 59
    iput v7, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiCount:I

    .line 60
    iput v7, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiProfileId:I

    .line 63
    const-string v4, "MWI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "read ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    and-int/lit16 v4, p1, 0x80

    if-nez v4, :cond_0

    .line 66
    .local v1, dontStore:Z
    :goto_0
    and-int/lit8 v4, p1, 0x3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    and-int/lit8 v3, p1, 0x3

    .line 67
    .local v3, type:I
    :goto_1
    shr-int/lit8 v4, p1, 0x5

    and-int/lit8 v2, v4, 0x3

    .line 68
    .local v2, profileId:I
    move v0, p2

    .line 70
    .local v0, count:I
    iput-boolean v1, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiDontStore:Z

    .line 71
    iput v3, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiType:I

    .line 72
    if-le v0, v8, :cond_2

    .line 73
    iput v8, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiCount:I

    .line 79
    :goto_2
    iput v2, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiProfileId:I

    .line 80
    return-void

    .line 65
    .end local v0           #count:I
    .end local v1           #dontStore:Z
    .end local v2           #profileId:I
    .end local v3           #type:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 66
    .restart local v1       #dontStore:Z
    :cond_1
    and-int/lit8 v3, p1, 0x1f

    goto :goto_1

    .line 74
    .restart local v0       #count:I
    .restart local v2       #profileId:I
    .restart local v3       #type:I
    :cond_2
    if-gez v0, :cond_3

    .line 75
    iput v7, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiCount:I

    goto :goto_2

    .line 77
    :cond_3
    iput v0, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiCount:I

    goto :goto_2
.end method

.method private isMwiAvailable()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 83
    const/4 v0, 0x1

    .line 84
    .local v0, isAvailable:Z
    iget v1, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiType:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiType:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiType:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 89
    const-string v1, "MWI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inavailable MWI type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiProfileId:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiProfileId:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiProfileId:I

    if-eq v1, v5, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiProfileId:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 96
    const/4 v0, 0x0

    .line 97
    const-string v1, "MWI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inavailable MWI profile ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiProfileId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    return v0
.end method


# virtual methods
.method public getMwiCount()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiCount:I

    return v0
.end method

.method public getMwiProfileId()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiProfileId:I

    return v0
.end method

.method public getMwiType()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiType:I

    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiDontStore:Z

    return v0
.end method

.method public toByteArray(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .parameter "out"

    .prologue
    .line 120
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 121
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 123
    iget v2, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiType:I

    iget v3, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiProfileId:I

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v3, v2

    iget-boolean v2, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiDontStore:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x80

    :goto_0
    or-int v0, v3, v2

    .line 124
    .local v0, octet1:I
    iget v1, p0, Lcom/android/internal/telephony/MessageWaitingIndication;->mwiCount:I

    .line 125
    .local v1, octet2:I
    const-string v2, "MWI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 127
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 128
    return-void

    .line 123
    .end local v0           #octet1:I
    .end local v1           #octet2:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
