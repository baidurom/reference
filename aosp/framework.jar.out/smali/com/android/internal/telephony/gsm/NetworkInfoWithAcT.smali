.class public Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
.super Ljava/lang/Object;
.source "NetworkInfoWithAcT.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field nAct:I

.field nPriority:I

.field operatorAlphaName:Ljava/lang/String;

.field operatorNumeric:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "operatorAlphaLong"
    .parameter "operatorNumeric"
    .parameter "nAct"
    .parameter "nPriority"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    .line 112
    iput p3, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nAct:I

    .line 113
    iput p4, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nPriority:I

    .line 114
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessTechnology()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nAct:I

    return v0
.end method

.method public getOperatorAlphaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nPriority:I

    return v0
.end method

.method public setAccessTechnology(I)V
    .locals 0
    .parameter "nAct"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nAct:I

    .line 98
    return-void
.end method

.method public setOperatorAlphaName(Ljava/lang/String;)V
    .locals 0
    .parameter "operatorAlphaName"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setOperatorNumeric(Ljava/lang/String;)V
    .locals 0
    .parameter "operatorNumeric"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 102
    iput p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nPriority:I

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkInfoWithAcT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nAct:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    return-void
.end method
