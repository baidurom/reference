.class public Landroid/database/CursorWrapper;
.super Ljava/lang/Object;
.source "CursorWrapper.java"

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field protected final mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 51
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 4
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 254
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 257
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor=null,ColumnIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 259
    :cond_0
    throw v0
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deactivate()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 75
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 77
    :cond_0
    throw v0
.end method

.method public getBlob(I)[B
    .locals 4
    .parameter "columnIndex"

    .prologue
    .line 266
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 274
    :goto_0
    return-object v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 269
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor=null,ColumnIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    const/4 v1, 0x0

    goto :goto_0

    .line 271
    :cond_0
    throw v0
.end method

.method public getColumnCount()I
    .locals 3

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 105
    :goto_0
    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 100
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const/4 v1, -0x1

    goto :goto_0

    .line 102
    :cond_0
    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 4
    .parameter "columnName"

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 118
    :goto_0
    return v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 113
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor=null,ColumnName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    const/4 v1, -0x1

    goto :goto_0

    .line 115
    :cond_0
    throw v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 4
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 132
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 127
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor=null,ColumnName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    const/4 v1, -0x1

    goto :goto_0

    .line 129
    :cond_0
    throw v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 4
    .parameter "columnIndex"

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 145
    :goto_0
    return-object v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 140
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor=null,ColumnIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    const/4 v1, 0x0

    goto :goto_0

    .line 142
    :cond_0
    throw v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 158
    :goto_0
    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 153
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    const/4 v1, 0x0

    goto :goto_0

    .line 155
    :cond_0
    throw v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 67
    :goto_0
    return v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 62
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const/4 v1, -0x1

    goto :goto_0

    .line 64
    :cond_0
    throw v0
.end method

.method public getDouble(I)D
    .locals 4
    .parameter "columnIndex"

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 171
    :goto_0
    return-wide v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 166
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor=null,ColumnIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    const-wide/high16 v1, -0x4010

    goto :goto_0

    .line 168
    :cond_0
    throw v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 176
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 184
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 179
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const/4 v1, 0x0

    goto :goto_0

    .line 181
    :cond_0
    throw v0
.end method

.method public getFloat(I)F
    .locals 4
    .parameter "columnIndex"

    .prologue
    .line 189
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getFloat(I)F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 197
    :goto_0
    return v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 192
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor=null,ColumnIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    const/high16 v1, -0x4080

    goto :goto_0

    .line 194
    :cond_0
    throw v0
.end method

.method public getInt(I)I
    .locals 4
    .parameter "columnIndex"

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 210
    :goto_0
    return v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 205
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor=null,ColumnIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    const/4 v1, -0x1

    goto :goto_0

    .line 207
    :cond_0
    throw v0
.end method

.method public getLong(I)J
    .locals 4
    .parameter "columnIndex"

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 223
    :goto_0
    return-wide v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 218
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor=null,ColumnIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 220
    :cond_0
    throw v0
.end method

.method public getPosition()I
    .locals 3

    .prologue
    .line 422
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 430
    :goto_0
    return v1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 425
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    const/4 v1, -0x1

    goto :goto_0

    .line 427
    :cond_0
    throw v0
.end method

.method public getShort(I)S
    .locals 4
    .parameter "columnIndex"

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getShort(I)S
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 236
    :goto_0
    return v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 231
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor=null,ColumnIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    const/4 v1, -0x1

    goto :goto_0

    .line 233
    :cond_0
    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .parameter "columnIndex"

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 249
    :goto_0
    return-object v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 244
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor=null,ColumnIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    const/4 v1, 0x0

    goto :goto_0

    .line 246
    :cond_0
    throw v0
.end method

.method public getType(I)I
    .locals 4
    .parameter "columnIndex"

    .prologue
    .line 344
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getType(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 352
    :goto_0
    return v1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 347
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor=null,ColumnIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    const/4 v1, -0x1

    goto :goto_0

    .line 349
    :cond_0
    throw v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 3

    .prologue
    .line 279
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 287
    :goto_0
    return v1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 282
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    const/4 v1, 0x0

    goto :goto_0

    .line 284
    :cond_0
    throw v0
.end method

.method public getWrappedCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public isAfterLast()Z
    .locals 3

    .prologue
    .line 292
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 300
    :goto_0
    return v1

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 295
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    const/4 v1, 0x0

    goto :goto_0

    .line 297
    :cond_0
    throw v0
.end method

.method public isBeforeFirst()Z
    .locals 3

    .prologue
    .line 305
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isBeforeFirst()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 313
    :goto_0
    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 308
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    const/4 v1, 0x0

    goto :goto_0

    .line 310
    :cond_0
    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 3

    .prologue
    .line 318
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isFirst()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 326
    :goto_0
    return v1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 321
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Curso=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    const/4 v1, 0x0

    goto :goto_0

    .line 323
    :cond_0
    throw v0
.end method

.method public isLast()Z
    .locals 4

    .prologue
    .line 331
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 339
    :goto_0
    return v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 334
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    const/4 v1, 0x0

    goto :goto_0

    .line 336
    :cond_0
    throw v0
.end method

.method public isNull(I)Z
    .locals 4
    .parameter "columnIndex"

    .prologue
    .line 357
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 365
    :goto_0
    return v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 360
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor=null,ColumnIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    const/4 v1, 0x0

    goto :goto_0

    .line 362
    :cond_0
    throw v0
.end method

.method public move(I)Z
    .locals 4
    .parameter "offset"

    .prologue
    .line 383
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->move(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 391
    :goto_0
    return v1

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 386
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor=null,offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    const/4 v1, 0x0

    goto :goto_0

    .line 388
    :cond_0
    throw v0
.end method

.method public moveToFirst()Z
    .locals 3

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 92
    :goto_0
    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 87
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v1, 0x0

    goto :goto_0

    .line 89
    :cond_0
    throw v0
.end method

.method public moveToLast()Z
    .locals 3

    .prologue
    .line 370
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 378
    :goto_0
    return v1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 373
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    const/4 v1, 0x0

    goto :goto_0

    .line 375
    :cond_0
    throw v0
.end method

.method public moveToNext()Z
    .locals 3

    .prologue
    .line 409
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 417
    :goto_0
    return v1

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 412
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    const/4 v1, 0x0

    goto :goto_0

    .line 414
    :cond_0
    throw v0
.end method

.method public moveToPosition(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 396
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 404
    :goto_0
    return v1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 399
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor=null,position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    const/4 v1, 0x0

    goto :goto_0

    .line 401
    :cond_0
    throw v0
.end method

.method public moveToPrevious()Z
    .locals 3

    .prologue
    .line 435
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 443
    :goto_0
    return v1

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 438
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    const/4 v1, 0x0

    goto :goto_0

    .line 440
    :cond_0
    throw v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 448
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 451
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 453
    :cond_0
    throw v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 460
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 463
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 465
    :cond_0
    throw v0
.end method

.method public requery()Z
    .locals 3

    .prologue
    .line 472
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 480
    :goto_0
    return v1

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 475
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    const/4 v1, 0x0

    goto :goto_0

    .line 477
    :cond_0
    throw v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter "extras"

    .prologue
    .line 485
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 493
    :goto_0
    return-object v1

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 488
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    const/4 v1, 0x0

    goto :goto_0

    .line 490
    :cond_0
    throw v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 4
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 498
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 501
    const-string v1, "CursorWapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException Cursor=null,uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 503
    :cond_0
    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 510
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 513
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 515
    :cond_0
    throw v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 522
    :try_start_0
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v1, p0, Landroid/database/CursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 525
    const-string v1, "CursorWapper"

    const-string v2, "NullPointerException Cursor=null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 527
    :cond_0
    throw v0
.end method
