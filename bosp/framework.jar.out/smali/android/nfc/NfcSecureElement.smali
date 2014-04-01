.class public final Landroid/nfc/NfcSecureElement;
.super Ljava/lang/Object;
.source "NfcSecureElement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcSecureElement"


# instance fields
.field private mService:Landroid/nfc/INfcSecureElement;


# direct methods
.method public constructor <init>(Landroid/nfc/INfcSecureElement;)V
    .locals 0
    .parameter "mSecureElementService"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    .line 76
    return-void
.end method


# virtual methods
.method public closeSecureElementConnection(I)V
    .locals 4
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    invoke-interface {v2, p1}, Landroid/nfc/INfcSecureElement;->closeSecureElementConnection(I)I

    move-result v1

    .line 142
    .local v1, status:I
    invoke-static {v1}, Landroid/nfc/ErrorCodes;->isError(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error during the conection close"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1           #status:I
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in closeSecureElement(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in closeSecureElement()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #status:I
    :cond_0
    return-void
.end method

.method public exchangeAPDU(I[B)[B
    .locals 4
    .parameter "handle"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    invoke-interface {v2, p1, p2}, Landroid/nfc/INfcSecureElement;->exchangeAPDU(I[B)[B

    move-result-object v1

    .line 121
    .local v1, response:[B
    if-nez v1, :cond_0

    .line 122
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Exchange APDU failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1           #response:[B
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in exchangeAPDU(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in exchangeAPDU()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #response:[B
    :cond_0
    return-object v1
.end method

.method public getSecureElementTechList(I)[I
    .locals 3
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    invoke-interface {v1, p1}, Landroid/nfc/INfcSecureElement;->getSecureElementTechList(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NfcSecureElement"

    const-string v2, "RemoteException in getSecureElementTechList(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    new-instance v1, Ljava/io/IOException;

    const-string v2, "RemoteException in getSecureElementTechList()"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSecureElementUid(I)[B
    .locals 4
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 178
    .local v1, uid:[B
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    invoke-interface {v2, p1}, Landroid/nfc/INfcSecureElement;->getSecureElementUid(I)[B

    move-result-object v1

    .line 180
    if-nez v1, :cond_0

    .line 181
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Get Secure Element UID failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in getSecureElementUid(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in getSecureElementUid()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    return-object v1
.end method

.method public openSecureElementConnection(Ljava/lang/String;)I
    .locals 4
    .parameter "seType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const-string v2, "android.nfc.smart_mx.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    invoke-interface {v2}, Landroid/nfc/INfcSecureElement;->openSecureElementConnection()I

    move-result v1

    .line 91
    .local v1, handle:I
    if-eqz v1, :cond_0

    .line 92
    return v1

    .line 94
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "SmartMX connection not allowed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1           #handle:I
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in openSecureElementConnection(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in openSecureElementConnection()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "android.nfc.uicc.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    new-instance v2, Ljava/io/IOException;

    const-string v3, "UICC connection not supported"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unknown Secure Element type"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
