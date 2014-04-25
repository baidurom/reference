.class public Lcom/android/phone/CellBroadcastLanguage;
.super Ljava/lang/Object;
.source "CellBroadcastLanguage.java"


# instance fields
.field private mLanguageId:I

.field private mLanguageName:Ljava/lang/String;

.field private mLanguageState:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "state"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/android/phone/CellBroadcastLanguage;->mLanguageId:I

    .line 14
    iput-object p2, p0, Lcom/android/phone/CellBroadcastLanguage;->mLanguageName:Ljava/lang/String;

    .line 15
    iput-boolean p3, p0, Lcom/android/phone/CellBroadcastLanguage;->mLanguageState:Z

    .line 16
    return-void
.end method


# virtual methods
.method public getLanguageId()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/android/phone/CellBroadcastLanguage;->mLanguageId:I

    return v0
.end method

.method public getLanguageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/phone/CellBroadcastLanguage;->mLanguageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageState()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/phone/CellBroadcastLanguage;->mLanguageState:Z

    return v0
.end method

.method public setLanguageId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 23
    iput p1, p0, Lcom/android/phone/CellBroadcastLanguage;->mLanguageId:I

    .line 24
    return-void
.end method

.method public setLanguageName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/phone/CellBroadcastLanguage;->mLanguageName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setLanguageState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/phone/CellBroadcastLanguage;->mLanguageState:Z

    .line 40
    return-void
.end method
