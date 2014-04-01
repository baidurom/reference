.class Lcom/android/server/ThrottleService$DataRecorder;
.super Ljava/lang/Object;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThrottleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataRecorder"
.end annotation


# static fields
.field private static final DATA_FILE_VERSION:I = 0x1

.field private static final MAX_SIMS_SUPPORTED:I = 0x3


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentPeriod:I

.field mImsi:Ljava/lang/String;

.field mParent:Lcom/android/server/ThrottleService;

.field mPeriodCount:I

.field mPeriodEnd:Ljava/util/Calendar;

.field mPeriodRxData:[J

.field mPeriodStart:Ljava/util/Calendar;

.field mPeriodTxData:[J

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/ThrottleService;)V
    .locals 2
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    .line 814
    iput-object p1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mContext:Landroid/content/Context;

    .line 815
    iput-object p2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    .line 817
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 820
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 821
    const/4 v0, 0x6

    :try_start_0
    iput v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    .line 822
    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    .line 823
    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    .line 825
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    .line 826
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    .line 828
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->retrieve()V

    .line 829
    monitor-exit v1

    .line 830
    return-void

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkAndDeleteLRUDataFile(Ljava/io/File;)V
    .locals 11
    .parameter "dir"

    .prologue
    const/4 v10, 0x3

    .line 956
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 958
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-gt v6, v10, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    const-string v6, "ThrottleService"

    const-string v7, "Too many data files"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_2
    const/4 v5, 0x0

    .line 962
    .local v5, oldest:Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v1, v0, v3

    .line 963
    .local v1, f:Ljava/io/File;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 964
    :cond_3
    move-object v5, v1

    .line 962
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 967
    .end local v1           #f:Ljava/io/File;
    :cond_5
    if-eqz v5, :cond_0

    .line 968
    const-string v6, "ThrottleService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " deleting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 970
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 971
    array-length v6, v2

    if-gt v6, v10, :cond_2

    goto :goto_0
.end method

.method private checkForSubscriberId()V
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    .line 947
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 950
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->retrieve()V

    goto :goto_0
.end method

.method private getDataFile()Ljava/io/File;
    .locals 7

    .prologue
    .line 924
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 925
    .local v0, dataDir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "system/throttle"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 926
    .local v4, throttleDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 927
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 929
    .local v3, mImsi:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 930
    invoke-direct {p0, v4}, Lcom/android/server/ThrottleService$DataRecorder;->useMRUFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 937
    .local v1, dataFile:Ljava/io/File;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    .line 938
    invoke-direct {p0, v4}, Lcom/android/server/ThrottleService$DataRecorder;->checkAndDeleteLRUDataFile(Ljava/io/File;)V

    .line 939
    return-object v1

    .line 933
    .end local v1           #dataFile:Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 934
    .local v2, imsiHash:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1       #dataFile:Ljava/io/File;
    goto :goto_0
.end method

.method private record()V
    .locals 7

    .prologue
    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1004
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1005
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1007
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v2, v5, :cond_0

    .line 1009
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    aget-wide v5, v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1010
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1012
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v2, v5, :cond_1

    .line 1013
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    aget-wide v5, v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1014
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1016
    :cond_1
    iget v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1017
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1019
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    iget-object v5, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1022
    const/4 v3, 0x0

    .line 1024
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->getDataFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v6, 0x100

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    .end local v3           #out:Ljava/io/BufferedWriter;
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1030
    if-eqz v4, :cond_2

    .line 1032
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_2
    move-object v3, v4

    .line 1036
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :cond_3
    :goto_3
    return-void

    .line 1026
    :catch_0
    move-exception v1

    .line 1027
    .local v1, e:Ljava/io/IOException;
    :goto_4
    :try_start_3
    const-string v5, "ThrottleService"

    const-string v6, "Error writing data file"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1030
    if-eqz v3, :cond_3

    .line 1032
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 1033
    :catch_1
    move-exception v5

    goto :goto_3

    .line 1030
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v3, :cond_4

    .line 1032
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1030
    :cond_4
    :goto_6
    throw v5

    .line 1033
    :catch_2
    move-exception v6

    goto :goto_6

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v5

    goto :goto_2

    .line 1030
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 1026
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    goto :goto_4
.end method

.method private retrieve()V
    .locals 21

    .prologue
    .line 1040
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/ThrottleService$DataRecorder;->zeroData(I)V

    .line 1042
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ThrottleService$DataRecorder;->getDataFile()Ljava/io/File;

    move-result-object v6

    .line 1044
    .local v6, f:Ljava/io/File;
    const/16 v16, 0x0

    .line 1046
    .local v16, s:Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v2, v0, [B

    .line 1047
    .local v2, buffer:[B
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    .end local v16           #s:Ljava/io/FileInputStream;
    .local v17, s:Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1053
    if-eqz v17, :cond_0

    .line 1055
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1059
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 1060
    .local v4, data:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_4

    .line 1061
    :cond_1
    const-string v18, "ThrottleService"

    const-string v19, "data file empty"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v17

    .line 1116
    .end local v2           #buffer:[B
    .end local v4           #data:Ljava/lang/String;
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return-void

    .line 1049
    :catch_0
    move-exception v5

    .line 1050
    .local v5, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v18, "ThrottleService"

    const-string v19, "Error reading data file"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1053
    if-eqz v16, :cond_2

    .line 1055
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1056
    :catch_1
    move-exception v18

    goto :goto_1

    .line 1053
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_3
    if-eqz v16, :cond_3

    .line 1055
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1053
    :cond_3
    :goto_4
    throw v18

    .line 1064
    .end local v16           #s:Ljava/io/FileInputStream;
    .restart local v2       #buffer:[B
    .restart local v4       #data:Ljava/lang/String;
    .restart local v17       #s:Ljava/io/FileInputStream;
    :cond_4
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1065
    .local v8, parsed:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1066
    .local v9, parsedUsed:I
    array-length v0, v8

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 1067
    const-string v18, "ThrottleService"

    const-string v19, "reading data file with insufficient length - ignoring"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v17

    .line 1068
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    goto :goto_1

    .line 1078
    .end local v16           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    :cond_5
    add-int/lit8 v10, v9, 0x1

    .end local v9           #parsedUsed:I
    .local v10, parsedUsed:I
    :try_start_6
    aget-object v18, v8, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 1079
    const-string v18, "ThrottleService"

    const-string v19, "reading data file with bad version - ignoring"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v16, v17

    .line 1080
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    goto :goto_1

    .line 1083
    .end local v16           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    :cond_6
    add-int/lit8 v9, v10, 0x1

    .end local v10           #parsedUsed:I
    .restart local v9       #parsedUsed:I
    :try_start_7
    aget-object v18, v8, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1084
    .local v11, periodCount:I
    array-length v0, v8

    move/from16 v18, v0

    mul-int/lit8 v19, v11, 0x2

    add-int/lit8 v19, v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 1085
    const-string v18, "ThrottleService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "reading data file with bad length ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    array-length v0, v8

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " != "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    mul-int/lit8 v20, v11, 0x2

    add-int/lit8 v20, v20, 0x5

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") - ignoring"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v17

    .line 1087
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1089
    .end local v16           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    :cond_7
    new-array v13, v11, [J

    .line 1090
    .local v13, periodRxData:[J
    const/4 v7, 0x0

    .local v7, i:I
    move v10, v9

    .end local v9           #parsedUsed:I
    .restart local v10       #parsedUsed:I
    :goto_5
    if-ge v7, v11, :cond_8

    .line 1091
    add-int/lit8 v9, v10, 0x1

    .end local v10           #parsedUsed:I
    .restart local v9       #parsedUsed:I
    aget-object v18, v8, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v13, v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1090
    add-int/lit8 v7, v7, 0x1

    move v10, v9

    .end local v9           #parsedUsed:I
    .restart local v10       #parsedUsed:I
    goto :goto_5

    .line 1093
    :cond_8
    :try_start_8
    new-array v15, v11, [J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1094
    .local v15, periodTxData:[J
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v11, :cond_9

    .line 1095
    add-int/lit8 v9, v10, 0x1

    .end local v10           #parsedUsed:I
    .restart local v9       #parsedUsed:I
    :try_start_9
    aget-object v18, v8, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v15, v7

    .line 1094
    add-int/lit8 v7, v7, 0x1

    move v10, v9

    .end local v9           #parsedUsed:I
    .restart local v10       #parsedUsed:I
    goto :goto_6

    .line 1098
    :cond_9
    add-int/lit8 v9, v10, 0x1

    .end local v10           #parsedUsed:I
    .restart local v9       #parsedUsed:I
    aget-object v18, v8, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1100
    .local v3, currentPeriod:I
    new-instance v14, Ljava/util/GregorianCalendar;

    invoke-direct {v14}, Ljava/util/GregorianCalendar;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1101
    .local v14, periodStart:Ljava/util/Calendar;
    add-int/lit8 v10, v9, 0x1

    .end local v9           #parsedUsed:I
    .restart local v10       #parsedUsed:I
    :try_start_a
    aget-object v18, v8, v9

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1102
    new-instance v12, Ljava/util/GregorianCalendar;

    invoke-direct {v12}, Ljava/util/GregorianCalendar;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 1103
    .local v12, periodEnd:Ljava/util/Calendar;
    add-int/lit8 v9, v10, 0x1

    .end local v10           #parsedUsed:I
    .restart local v9       #parsedUsed:I
    :try_start_b
    aget-object v18, v8, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1109
    :try_start_c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    .line 1110
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    .line 1111
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    .line 1112
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    .line 1113
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    .line 1114
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    .line 1115
    monitor-exit v19
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v16, v17

    .line 1116
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1104
    .end local v3           #currentPeriod:I
    .end local v7           #i:I
    .end local v9           #parsedUsed:I
    .end local v11           #periodCount:I
    .end local v12           #periodEnd:Ljava/util/Calendar;
    .end local v13           #periodRxData:[J
    .end local v14           #periodStart:Ljava/util/Calendar;
    .end local v15           #periodTxData:[J
    .end local v16           #s:Ljava/io/FileInputStream;
    .restart local v10       #parsedUsed:I
    .restart local v17       #s:Ljava/io/FileInputStream;
    :catch_2
    move-exception v5

    move v9, v10

    .line 1105
    .end local v10           #parsedUsed:I
    .local v5, e:Ljava/lang/Exception;
    .restart local v9       #parsedUsed:I
    :goto_7
    const-string v18, "ThrottleService"

    const-string v19, "Error parsing data file - ignoring"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v17

    .line 1106
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1115
    .end local v5           #e:Ljava/lang/Exception;
    .end local v16           #s:Ljava/io/FileInputStream;
    .restart local v3       #currentPeriod:I
    .restart local v7       #i:I
    .restart local v11       #periodCount:I
    .restart local v12       #periodEnd:Ljava/util/Calendar;
    .restart local v13       #periodRxData:[J
    .restart local v14       #periodStart:Ljava/util/Calendar;
    .restart local v15       #periodTxData:[J
    .restart local v17       #s:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v18

    :try_start_d
    monitor-exit v19
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v18

    .line 1056
    .end local v2           #buffer:[B
    .end local v3           #currentPeriod:I
    .end local v4           #data:Ljava/lang/String;
    .end local v7           #i:I
    .end local v8           #parsed:[Ljava/lang/String;
    .end local v9           #parsedUsed:I
    .end local v11           #periodCount:I
    .end local v12           #periodEnd:Ljava/util/Calendar;
    .end local v13           #periodRxData:[J
    .end local v14           #periodStart:Ljava/util/Calendar;
    .end local v15           #periodTxData:[J
    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    :catch_3
    move-exception v19

    goto/16 :goto_4

    .end local v16           #s:Ljava/io/FileInputStream;
    .restart local v2       #buffer:[B
    .restart local v17       #s:Ljava/io/FileInputStream;
    :catch_4
    move-exception v18

    goto/16 :goto_0

    .line 1104
    .restart local v4       #data:Ljava/lang/String;
    .restart local v8       #parsed:[Ljava/lang/String;
    .restart local v9       #parsedUsed:I
    :catch_5
    move-exception v5

    goto :goto_7

    .line 1053
    .end local v4           #data:Ljava/lang/String;
    .end local v8           #parsed:[Ljava/lang/String;
    .end local v9           #parsedUsed:I
    :catchall_2
    move-exception v18

    move-object/from16 v16, v17

    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 1049
    .end local v16           #s:Ljava/io/FileInputStream;
    .restart local v17       #s:Ljava/io/FileInputStream;
    :catch_6
    move-exception v5

    move-object/from16 v16, v17

    .end local v17           #s:Ljava/io/FileInputStream;
    .restart local v16       #s:Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private setPeriodEnd(Ljava/util/Calendar;)V
    .locals 2
    .parameter "end"

    .prologue
    .line 877
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 878
    :try_start_0
    iput-object p1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    .line 879
    monitor-exit v1

    .line 880
    return-void

    .line 879
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPeriodStart(Ljava/util/Calendar;)V
    .locals 2
    .parameter "start"

    .prologue
    .line 889
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 890
    :try_start_0
    iput-object p1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    .line 891
    monitor-exit v1

    .line 892
    return-void

    .line 891
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private useMRUFile(Ljava/io/File;)Ljava/io/File;
    .locals 10
    .parameter "dir"

    .prologue
    .line 975
    const/4 v5, 0x0

    .line 976
    .local v5, newest:Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 978
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 979
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 980
    .local v1, f:Ljava/io/File;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 981
    :cond_0
    move-object v5, v1

    .line 979
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 985
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    if-nez v5, :cond_3

    .line 986
    new-instance v5, Ljava/io/File;

    .end local v5           #newest:Ljava/io/File;
    const-string v6, "temp"

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 988
    .restart local v5       #newest:Ljava/io/File;
    :cond_3
    return-object v5
.end method

.method private zeroData(I)V
    .locals 5
    .parameter "field"

    .prologue
    .line 901
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v2

    .line 902
    const/4 v0, 0x0

    .local v0, period:I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-ge v0, v1, :cond_0

    .line 903
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v0

    .line 904
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v0

    .line 902
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 906
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    .line 907
    monitor-exit v2

    .line 909
    return-void

    .line 907
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addData(JJ)V
    .locals 5
    .parameter "bytesRead"
    .parameter "bytesWritten"

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->checkForSubscriberId()V

    .line 916
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 917
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    aget-wide v3, v0, v2

    add-long/2addr v3, p1

    aput-wide v3, v0, v2

    .line 918
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    iget v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    aget-wide v3, v0, v2

    add-long/2addr v3, p3

    aput-wide v3, v0, v2

    .line 919
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->record()V

    .line 921
    return-void

    .line 919
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPeriodCount()I
    .locals 2

    .prologue
    .line 895
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 896
    :try_start_0
    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    monitor-exit v1

    return v0

    .line 897
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPeriodEnd()J
    .locals 4

    .prologue
    .line 871
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 873
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getPeriodRx(I)J
    .locals 3
    .parameter "which"

    .prologue
    .line 1119
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v2

    .line 1120
    :try_start_0
    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-le p1, v0, :cond_0

    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 1123
    :goto_0
    return-wide v0

    .line 1121
    :cond_0
    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    sub-int p1, v0, p1

    .line 1122
    if-gez p1, :cond_1

    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    add-int/2addr p1, v0

    .line 1123
    :cond_1
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    aget-wide v0, v0, p1

    monitor-exit v2

    goto :goto_0

    .line 1124
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPeriodStart()J
    .locals 4

    .prologue
    .line 883
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v1

    .line 884
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 885
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getPeriodTx(I)J
    .locals 3
    .parameter "which"

    .prologue
    .line 1127
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v2

    .line 1128
    :try_start_0
    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-le p1, v0, :cond_0

    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 1131
    :goto_0
    return-wide v0

    .line 1129
    :cond_0
    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    sub-int p1, v0, p1

    .line 1130
    if-gez p1, :cond_1

    iget v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    add-int/2addr p1, v0

    .line 1131
    :cond_1
    iget-object v0, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    aget-wide v0, v0, p1

    monitor-exit v2

    goto :goto_0

    .line 1132
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setNextPeriod(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 834
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->checkForSubscriberId()V

    .line 835
    const/4 v0, 0x1

    .line 837
    .local v0, startNewPeriod:Z
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodStart:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodEnd:Ljava/util/Calendar;

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    const/4 v0, 0x0

    .line 864
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/ThrottleService$DataRecorder;->setPeriodStart(Ljava/util/Calendar;)V

    .line 865
    invoke-direct {p0, p2}, Lcom/android/server/ThrottleService$DataRecorder;->setPeriodEnd(Ljava/util/Calendar;)V

    .line 866
    invoke-direct {p0}, Lcom/android/server/ThrottleService$DataRecorder;->record()V

    .line 867
    return v0

    .line 857
    :cond_0
    iget-object v2, p0, Lcom/android/server/ThrottleService$DataRecorder;->mParent:Lcom/android/server/ThrottleService;

    monitor-enter v2

    .line 858
    :try_start_0
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    .line 859
    iget v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    iget v3, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodCount:I

    if-lt v1, v3, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    .line 860
    :cond_1
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodRxData:[J

    iget v3, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v3

    .line 861
    iget-object v1, p0, Lcom/android/server/ThrottleService$DataRecorder;->mPeriodTxData:[J

    iget v3, p0, Lcom/android/server/ThrottleService$DataRecorder;->mCurrentPeriod:I

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v3

    .line 862
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
