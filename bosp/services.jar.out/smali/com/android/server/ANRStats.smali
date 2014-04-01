.class public Lcom/android/server/ANRStats;
.super Ljava/lang/Object;
.source "ANRStats.java"


# static fields
.field public static ANRStatsFilePath:Ljava/lang/String; = null

.field public static final FULLTRACELEVEL_0:I = 0x0

.field public static final FULLTRACELEVEL_1:I = 0x1

.field public static final FULLTRACELEVEL_2:I = 0x2

.field public static final FULLTRACELEVEL_DIS:I = -0x1

.field private static final PREFIX_CMD:Ljava/lang/String; = "/stat"

.field private static final PREFIX_PROC:Ljava/lang/String; = "/proc/"

.field private static final PROCESS_CMDLINE_NAME_FORMAT:[I = null

.field static final TAG:Ljava/lang/String; = "ANRStats"

.field private static final mProcessCmdlineString:[Ljava/lang/String;


# instance fields
.field public mArraySize:I

.field public mJavaLen:I

.field public mJavaPids:[I

.field public mNativeLen:I

.field public mNativePids:[I

.field public mpids:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/ANRStats;->PROCESS_CMDLINE_NAME_FORMAT:[I

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/ANRStats;->mProcessCmdlineString:[Ljava/lang/String;

    .line 83
    const-string v0, "/data/anr/traces.txt"

    sput-object v0, Lcom/android/server/ANRStats;->ANRStatsFilePath:Ljava/lang/String;

    return-void

    .line 76
    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x0t 0x10t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter "num"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v3, p0, Lcom/android/server/ANRStats;->mpids:[I

    .line 92
    iput-object v3, p0, Lcom/android/server/ANRStats;->mJavaPids:[I

    .line 93
    iput-object v3, p0, Lcom/android/server/ANRStats;->mNativePids:[I

    .line 95
    iput v1, p0, Lcom/android/server/ANRStats;->mJavaLen:I

    .line 96
    iput v1, p0, Lcom/android/server/ANRStats;->mNativeLen:I

    .line 98
    iput v1, p0, Lcom/android/server/ANRStats;->mArraySize:I

    .line 107
    iput p1, p0, Lcom/android/server/ANRStats;->mArraySize:I

    .line 109
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/server/ANRStats;->mpids:[I

    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/ANRStats;->mpids:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/server/ANRStats;->mJavaPids:[I

    .line 116
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/android/server/ANRStats;->mJavaPids:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_1
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/server/ANRStats;->mNativePids:[I

    .line 119
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lcom/android/server/ANRStats;->mNativePids:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 121
    :cond_2
    return-void
.end method

.method public static createFullStackTracesFile(Z)Ljava/io/File;
    .locals 12
    .parameter "clearTraces"

    .prologue
    const/4 v7, 0x0

    .line 181
    sget-object v6, Lcom/android/server/ANRStats;->ANRStatsFilePath:Ljava/lang/String;

    .line 182
    .local v6, tracesPath:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    move-object v5, v7

    .line 216
    :cond_1
    :goto_0
    return-object v5

    .line 186
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v5, tracesFile:Ljava/io/File;
    if-eqz v5, :cond_1

    .line 189
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 190
    .local v4, tracesDir:Ljava/io/File;
    if-nez v4, :cond_3

    move-object v5, v7

    goto :goto_0

    .line 191
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 192
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1fd

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v8, v9, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 194
    if-eqz p0, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 195
    new-instance v1, Ljava/io/File;

    const-string v8, "/data/anr/full_traces_50.txt"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, f1:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 198
    :cond_5
    const/16 v3, 0x31

    .local v3, i:I
    :goto_1
    if-lez v3, :cond_7

    .line 199
    new-instance v1, Ljava/io/File;

    .end local v1           #f1:Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/anr/full_traces_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v1       #f1:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 201
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/anr/full_traces_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v2, f2:Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 198
    .end local v2           #f2:Ljava/io/File;
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 205
    :cond_7
    new-instance v1, Ljava/io/File;

    .end local v1           #f1:Ljava/io/File;
    const-string v8, "/data/anr/full_traces_1.txt"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .restart local v1       #f1:Ljava/io/File;
    invoke-virtual {v5, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 209
    .end local v1           #f1:Ljava/io/File;
    .end local v3           #i:I
    :cond_8
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 210
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1b6

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v8, v9, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 211
    .end local v4           #tracesDir:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/io/IOException;
    const-string v8, "ANRStats"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to prepare full ANR traces file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v7

    .line 213
    goto/16 :goto_0
.end method

.method private printJavaCurrentPID()V
    .locals 4

    .prologue
    .line 124
    iget v1, p0, Lcom/android/server/ANRStats;->mJavaLen:I

    if-nez v1, :cond_1

    .line 125
    const-string v1, "ANRStats"

    const-string v2, "Javapids is null,please not print"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void

    .line 127
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/server/ANRStats;->mJavaLen:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ANRStats;->mJavaPids:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 128
    const-string v1, "ANRStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "th"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " curJavaPids:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ANRStats;->mJavaPids:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private printNativeCurrentPID()V
    .locals 4

    .prologue
    .line 134
    iget v1, p0, Lcom/android/server/ANRStats;->mNativeLen:I

    if-nez v1, :cond_1

    .line 135
    const-string v1, "ANRStats"

    const-string v2, "native pids is null,please not print"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    return-void

    .line 137
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/server/ANRStats;->mNativeLen:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ANRStats;->mNativePids:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 138
    const-string v1, "ANRStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "th"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " curNativePids:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ANRStats;->mNativePids:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public collectCurrentPID()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 144
    const/4 v4, 0x0

    .line 145
    .local v4, length:I
    const/4 v3, 0x0

    .line 146
    .local v3, i:I
    const-string v5, "/proc"

    iget-object v6, p0, Lcom/android/server/ANRStats;->mpids:[I

    invoke-static {v5, v6}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v2

    .line 148
    .local v2, curPids:[I
    if-nez v2, :cond_0

    .line 149
    const-string v5, "ANRStats"

    const-string v6, "Warning: process getPids failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput v8, p0, Lcom/android/server/ANRStats;->mJavaLen:I

    .line 151
    iput v8, p0, Lcom/android/server/ANRStats;->mNativeLen:I

    .line 176
    :goto_0
    invoke-direct {p0}, Lcom/android/server/ANRStats;->printNativeCurrentPID()V

    .line 177
    invoke-direct {p0}, Lcom/android/server/ANRStats;->printJavaCurrentPID()V

    .line 178
    return-void

    .line 153
    :cond_0
    const/4 v3, 0x0

    iput v8, p0, Lcom/android/server/ANRStats;->mJavaLen:I

    iput v8, p0, Lcom/android/server/ANRStats;->mNativeLen:I

    :goto_1
    aget v5, v2, v3

    if-eq v5, v9, :cond_4

    iget v5, p0, Lcom/android/server/ANRStats;->mArraySize:I

    if-ge v3, v5, :cond_4

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/proc/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/stat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, cmdlinePath:Ljava/lang/String;
    sget-object v0, Lcom/android/server/ANRStats;->mProcessCmdlineString:[Ljava/lang/String;

    .line 159
    .local v0, cmdline:[Ljava/lang/String;
    sget-object v5, Lcom/android/server/ANRStats;->PROCESS_CMDLINE_NAME_FORMAT:[I

    invoke-static {v1, v5, v0, v10, v10}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 160
    const-string v5, "ANRStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    aget-object v5, v0, v8

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v9, :cond_1

    aget-object v5, v0, v8

    const-string v6, "system_server"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v9, :cond_2

    .line 163
    :cond_1
    iget-object v5, p0, Lcom/android/server/ANRStats;->mJavaPids:[I

    iget v6, p0, Lcom/android/server/ANRStats;->mJavaLen:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/server/ANRStats;->mJavaLen:I

    aget v7, v2, v3

    aput v7, v5, v6

    .line 153
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 165
    :cond_2
    iget-object v5, p0, Lcom/android/server/ANRStats;->mNativePids:[I

    iget v6, p0, Lcom/android/server/ANRStats;->mNativeLen:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/server/ANRStats;->mNativeLen:I

    aget v7, v2, v3

    aput v7, v5, v6

    goto :goto_2

    .line 168
    :cond_3
    const-string v5, "ANRStats"

    const-string v6, "Warning: readProcFile failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 172
    .end local v0           #cmdline:[Ljava/lang/String;
    .end local v1           #cmdlinePath:Ljava/lang/String;
    :cond_4
    const-string v5, "ANRStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "************mJavaLen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/ANRStats;->mJavaLen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "**************"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v5, "ANRStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "************mNativeLen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/ANRStats;->mNativeLen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "**************"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public dumpAllBackTrace(ILjava/lang/String;Ljava/util/ArrayList;)Z
    .locals 5
    .parameter "level"
    .parameter "file_path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, pids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 221
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 222
    :cond_0
    const-string v2, "ANRStats"

    const-string v4, "Warning: dumpAllBackTrace file_path invalid"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 282
    :goto_0
    return v2

    .line 226
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 279
    const-string v2, "ANRStats"

    const-string v4, "Error: dumpAllBackTrace level wrong"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 280
    goto :goto_0

    .line 229
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/server/ANRStats;->native_rtt_is_ready(I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 230
    iget-object v2, p0, Lcom/android/server/ANRStats;->mNativePids:[I

    iget v4, p0, Lcom/android/server/ANRStats;->mNativeLen:I

    invoke-virtual {p0, v2, v4, p2}, Lcom/android/server/ANRStats;->native_rtt_dump_all_backtrace_in_one_file([IILjava/lang/String;)I

    .line 236
    invoke-virtual {p0, v3}, Lcom/android/server/ANRStats;->native_rtt_is_ready(I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 237
    iget-object v2, p0, Lcom/android/server/ANRStats;->mJavaPids:[I

    iget v3, p0, Lcom/android/server/ANRStats;->mJavaLen:I

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/ANRStats;->native_rtt_dump_all_backtrace_in_one_file([IILjava/lang/String;)I

    .line 282
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 232
    :cond_3
    const-string v2, "ANRStats"

    const-string v4, "rtt process not ready"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 233
    goto :goto_0

    .line 239
    :cond_4
    const-string v2, "ANRStats"

    const-string v4, "rtt process not ready"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 240
    goto :goto_0

    .line 245
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/server/ANRStats;->native_rtt_is_ready(I)I

    move-result v2

    if-eqz v2, :cond_5

    .line 246
    iget-object v2, p0, Lcom/android/server/ANRStats;->mJavaPids:[I

    iget v3, p0, Lcom/android/server/ANRStats;->mJavaLen:I

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/ANRStats;->native_rtt_dump_all_backtrace_in_one_file([IILjava/lang/String;)I

    goto :goto_1

    .line 248
    :cond_5
    const-string v2, "ANRStats"

    const-string v4, "rtt process not ready"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 249
    goto :goto_0

    .line 254
    :pswitch_2
    if-nez p3, :cond_6

    .line 255
    const-string v2, "ANRStats"

    const-string v4, "Error: dumpAllBackTrace level2 pids invalid"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 256
    goto :goto_0

    .line 259
    :cond_6
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 260
    .local v1, tmpPids:[I
    if-eqz v1, :cond_2

    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 262
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 265
    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/server/ANRStats;->native_rtt_is_ready(I)I

    move-result v2

    if-eqz v2, :cond_8

    .line 266
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/ANRStats;->native_rtt_dump_all_backtrace_in_one_file([IILjava/lang/String;)I

    goto :goto_1

    .line 268
    :cond_8
    const-string v2, "ANRStats"

    const-string v4, "rtt process not ready"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 269
    goto/16 :goto_0

    .line 275
    .end local v0           #i:I
    .end local v1           #tmpPids:[I
    :pswitch_3
    const-string v2, "ANRStats"

    const-string v4, "WARN: Disable ANR full log function"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 276
    goto/16 :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public native dumpBinderState(Ljava/lang/String;)Z
.end method

.method public native native_rtt_dump_all_backtrace(ILjava/lang/String;)I
.end method

.method public native native_rtt_dump_all_backtrace_in_one_file([IILjava/lang/String;)I
.end method

.method public native native_rtt_dump_backtrace(IILjava/lang/String;)I
.end method

.method public native native_rtt_is_ready(I)I
.end method

.method public native native_rtt_stop_trace()Z
.end method
