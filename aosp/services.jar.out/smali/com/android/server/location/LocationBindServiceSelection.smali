.class public Lcom/android/server/location/LocationBindServiceSelection;
.super Ljava/lang/Object;
.source "LocationBindServiceSelection.java"


# static fields
.field public static final BIND_GEOCODER_SERVICE_NAME:Ljava/lang/String; = "PrivateInnerGeocoderServiceName"

.field public static final BIND_NETWORK_SERVICE_NAME:Ljava/lang/String; = "NetworkServiceName"

.field private static final LOCATION_SERVICE_CONFIGFILE_NAME:Ljava/lang/String; = "location_service_conf.xml"

.field private static final LOCATION_SERVICE_CONFIGFILE_PATH:Ljava/lang/String; = "/system/etc"

.field private static final TAG:Ljava/lang/String; = "LocationBindServiceSelection"

.field private static mLocationBindServiceSelection:Lcom/android/server/location/LocationBindServiceSelection;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGeocoderServiceName:Ljava/lang/String;

.field private mNetworkServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/location/LocationBindServiceSelection;->mLocationBindServiceSelection:Lcom/android/server/location/LocationBindServiceSelection;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/android/server/location/LocationBindServiceSelection;->mContext:Landroid/content/Context;

    .line 82
    iput-object v0, p0, Lcom/android/server/location/LocationBindServiceSelection;->mGeocoderServiceName:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/android/server/location/LocationBindServiceSelection;->mNetworkServiceName:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/android/server/location/LocationBindServiceSelection;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method private getBindServiceFromXMLFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .parameter "searchTag"

    .prologue
    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 174
    .local v12, startTime:J
    const/4 v11, 0x0

    .line 175
    .local v11, serviceName:Ljava/lang/String;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 176
    .local v10, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    .line 179
    .local v7, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v14, "/system/etc"

    const-string v15, "location_service_conf.xml"

    invoke-direct {v1, v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v1, configFile:Ljava/io/File;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 181
    .end local v7           #is:Ljava/io/InputStream;
    .local v8, is:Ljava/io/InputStream;
    const/4 v14, 0x0

    :try_start_1
    invoke-interface {v10, v8, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 182
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 183
    .local v6, eventType:I
    const/4 v2, 0x0

    .line 184
    .local v2, done:Z
    :goto_0
    const/4 v14, 0x1

    if-eq v6, v14, :cond_1

    if-nez v2, :cond_1

    .line 186
    const/4 v9, 0x0

    .line 187
    .local v9, name:Ljava/lang/String;
    packed-switch v6, :pswitch_data_0

    .line 204
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 205
    goto :goto_0

    .line 192
    :pswitch_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 193
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 195
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 199
    :pswitch_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 200
    const-string v14, "LocationService"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result v14

    if-eqz v14, :cond_0

    .line 201
    const/4 v2, 0x1

    goto :goto_1

    .line 219
    .end local v9           #name:Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    .line 223
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_2
    :goto_2
    move-object v7, v8

    .line 231
    .end local v1           #configFile:Ljava/io/File;
    .end local v2           #done:Z
    .end local v6           #eventType:I
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    :cond_3
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 232
    .local v4, endTime:J
    const-string v14, "LocationBindServiceSelection"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getBindServiceFromXMLFile: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Using time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v4, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-object v11

    .line 207
    .end local v4           #endTime:J
    :catch_0
    move-exception v3

    .line 209
    .local v3, e:Ljava/io/IOException;
    :goto_4
    :try_start_3
    const-string v14, "LocationBindServiceSelection"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    const/4 v11, 0x0

    .line 219
    if-eqz v7, :cond_3

    .line 223
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 225
    :catch_1
    move-exception v3

    .line 227
    const-string v14, "LocationBindServiceSelection"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_5
    invoke-static {v14, v15}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 212
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 214
    .local v3, e:Ljava/lang/Exception;
    :goto_6
    :try_start_5
    const-string v14, "LocationBindServiceSelection"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 215
    const/4 v11, 0x0

    .line 219
    if-eqz v7, :cond_3

    .line 223
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 225
    :catch_3
    move-exception v3

    .line 227
    .local v3, e:Ljava/io/IOException;
    const-string v14, "LocationBindServiceSelection"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    .line 219
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_7
    if-eqz v7, :cond_4

    .line 223
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 219
    :cond_4
    :goto_8
    throw v14

    .line 225
    :catch_4
    move-exception v3

    .line 227
    .restart local v3       #e:Ljava/io/IOException;
    const-string v15, "LocationBindServiceSelection"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 225
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v1       #configFile:Ljava/io/File;
    .restart local v2       #done:Z
    .restart local v6       #eventType:I
    .restart local v8       #is:Ljava/io/InputStream;
    :catch_5
    move-exception v3

    .line 227
    .restart local v3       #e:Ljava/io/IOException;
    const-string v14, "LocationBindServiceSelection"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 219
    .end local v2           #done:Z
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #eventType:I
    :catchall_1
    move-exception v14

    move-object v7, v8

    .end local v8           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    goto :goto_7

    .line 212
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    :catch_6
    move-exception v3

    move-object v7, v8

    .end local v8           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    goto :goto_6

    .line 207
    .end local v7           #is:Ljava/io/InputStream;
    .restart local v8       #is:Ljava/io/InputStream;
    :catch_7
    move-exception v3

    move-object v7, v8

    .end local v8           #is:Ljava/io/InputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    goto :goto_4

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getSingleInstance(Landroid/content/Context;)Lcom/android/server/location/LocationBindServiceSelection;
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    sget-object v0, Lcom/android/server/location/LocationBindServiceSelection;->mLocationBindServiceSelection:Lcom/android/server/location/LocationBindServiceSelection;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/android/server/location/LocationBindServiceSelection;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationBindServiceSelection;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/location/LocationBindServiceSelection;->mLocationBindServiceSelection:Lcom/android/server/location/LocationBindServiceSelection;

    .line 106
    :cond_0
    sget-object v0, Lcom/android/server/location/LocationBindServiceSelection;->mLocationBindServiceSelection:Lcom/android/server/location/LocationBindServiceSelection;

    return-object v0
.end method


# virtual methods
.method public getGeocoderServiceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    const-string v1, "com.google.android.location.GeocodeProvider"

    iput-object v1, p0, Lcom/android/server/location/LocationBindServiceSelection;->mGeocoderServiceName:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, tempGeocoderServiceName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/LocationBindServiceSelection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "GeocoderServiceName"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    const-string v2, "LocationBindServiceSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGeocoderServiceName from the database geocoderServiceName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    move-object v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-nez v0, :cond_0

    .line 126
    const-string v1, "PrivateInnerGeocoderServiceName"

    invoke-direct {p0, v1}, Lcom/android/server/location/LocationBindServiceSelection;->getBindServiceFromXMLFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v2, "LocationBindServiceSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGeocoderServiceName from the XML file geocoderServiceName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_3

    move-object v1, v0

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    if-eqz v0, :cond_1

    .line 131
    iput-object v0, p0, Lcom/android/server/location/LocationBindServiceSelection;->mGeocoderServiceName:Ljava/lang/String;

    .line 133
    :cond_1
    const-string v1, "LocationBindServiceSelection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGeocoderServiceName() is returnning mGeocoderServiceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/LocationBindServiceSelection;->mGeocoderServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/android/server/location/LocationBindServiceSelection;->mGeocoderServiceName:Ljava/lang/String;

    return-object v1

    .line 123
    :cond_2
    const-string v1, "null"

    goto :goto_0

    .line 127
    :cond_3
    const-string v1, "null"

    goto :goto_1
.end method

.method public getNetworkLocationServiceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    const-string v1, "com.google.android.location.NetworkLocationProvider"

    iput-object v1, p0, Lcom/android/server/location/LocationBindServiceSelection;->mNetworkServiceName:Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, tempNetworkLocationServiceName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/LocationBindServiceSelection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "NetworkServiceName"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v2, "LocationBindServiceSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkLocationServiceName from the database networkLocationServiceName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    move-object v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-nez v0, :cond_0

    .line 155
    const-string v1, "NetworkServiceName"

    invoke-direct {p0, v1}, Lcom/android/server/location/LocationBindServiceSelection;->getBindServiceFromXMLFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v2, "LocationBindServiceSelection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkLocationServiceName from the XML file networkLocationServiceName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_3

    move-object v1, v0

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    if-eqz v0, :cond_1

    .line 161
    iput-object v0, p0, Lcom/android/server/location/LocationBindServiceSelection;->mNetworkServiceName:Ljava/lang/String;

    .line 163
    :cond_1
    const-string v1, "LocationBindServiceSelection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkLocationServiceName is returnning mNetworkServiceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/LocationBindServiceSelection;->mNetworkServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/android/server/location/LocationBindServiceSelection;->mNetworkServiceName:Ljava/lang/String;

    return-object v1

    .line 151
    :cond_2
    const-string v1, "null"

    goto :goto_0

    .line 156
    :cond_3
    const-string v1, "null"

    goto :goto_1
.end method
