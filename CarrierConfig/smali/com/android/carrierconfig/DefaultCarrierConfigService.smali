.class public Lcom/android/carrierconfig/DefaultCarrierConfigService;
.super Landroid/service/carrier/CarrierService;
.source "DefaultCarrierConfigService.java"


# instance fields
.field private mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

.field private mOemCarrierConfigService:Lcom/android/carrierconfig/OemCarrierConfigService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/service/carrier/CarrierService;-><init>()V

    const-string v0, "DefaultCarrierConfigService"

    const-string v1, "Service created"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 53
    new-instance v0, Lcom/android/carrierconfig/OemCarrierConfigService;

    invoke-direct {v0}, Lcom/android/carrierconfig/OemCarrierConfigService;-><init>()V

    iput-object v0, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mOemCarrierConfigService:Lcom/android/carrierconfig/OemCarrierConfigService;

    return-void
.end method

.method static checkFilters(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    .line 276
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 277
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 278
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    .line 279
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "iccid"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x7

    goto :goto_1

    :sswitch_1
    const-string v7, "name"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v6, 0x9

    goto :goto_1

    :sswitch_2
    const-string v7, "imsi"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_3
    const-string v7, "gid2"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_4
    const-string v7, "gid1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_5
    const-string v7, "spn"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_6
    const-string v7, "mnc"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v1

    goto :goto_1

    :sswitch_7
    const-string v7, "mcc"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v0

    goto :goto_1

    :sswitch_8
    const-string v7, "cid"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v6, 0x8

    goto :goto_1

    :sswitch_9
    const-string v7, "device"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x6

    :cond_1
    :goto_1
    packed-switch v6, :pswitch_data_0

    if-eqz v3, :cond_3

    .line 323
    invoke-static {v4, v5}, Lcom/android/carrierconfig/OemCarrierConfigService;->oemCheckFilters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :pswitch_0
    if-eqz v3, :cond_3

    .line 311
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getCarrierId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 312
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getSpecificCarrierId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_2
    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v0

    goto :goto_3

    :pswitch_1
    if-eqz v3, :cond_3

    .line 308
    invoke-static {v5, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->matchOnIccid(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :pswitch_2
    if-eqz v3, :cond_3

    .line 305
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :pswitch_3
    if-eqz v3, :cond_3

    .line 302
    invoke-static {v5, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->matchOnImsi(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :pswitch_4
    if-eqz v3, :cond_3

    .line 299
    invoke-static {v5, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->matchOnSP(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :pswitch_5
    if-eqz v3, :cond_3

    .line 296
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :pswitch_6
    if-eqz v3, :cond_3

    .line 292
    invoke-static {v5, p1}, Lcom/android/carrierconfig/OemCarrierConfigService;->oemCheckGid1Match(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :pswitch_7
    if-eqz v3, :cond_3

    .line 284
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :pswitch_8
    if-eqz v3, :cond_3

    .line 281
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :goto_3
    :pswitch_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f94e1aa -> :sswitch_9
        0x180be -> :sswitch_8
        0x1a58d -> :sswitch_7
        0x1a6e2 -> :sswitch_6
        0x1bdb1 -> :sswitch_5
        0x3068af -> :sswitch_4
        0x3068b0 -> :sswitch_3
        0x31627a -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x5f62564 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method static matchOnIccid(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z
    .locals 5

    .line 390
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getIccid()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    .line 391
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 392
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, ","

    .line 396
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 397
    array-length v0, p0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    .line 398
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    return v2
.end method

.method static matchOnImsi(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z
    .locals 0

    .line 343
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getImsi()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 353
    invoke-static {p1, p0}, Lcom/android/carrierconfig/OemCarrierConfigService;->oemCheckImsiMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static matchOnSP(Ljava/lang/String;Landroid/service/carrier/CarrierIdentifier;)Z
    .locals 1

    .line 370
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getSpn()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null"

    .line 371
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 376
    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    .line 377
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 382
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 201
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 210
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 211
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 213
    invoke-static {p0, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->checkFilters(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 221
    invoke-static {v1, p1}, Lcom/android/carrierconfig/OemCarrierConfigService;->oemCheckMccmncMatch(Landroid/os/PersistableBundle;Landroid/service/carrier/CarrierIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    .line 227
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public onLoadConfig(Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;
    .locals 13

    const-string v0, "DefaultCarrierConfigService"

    const-string v1, "Config being fetched"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 87
    :cond_0
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 89
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :try_start_1
    iget-object v2, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-nez v2, :cond_1

    .line 91
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 93
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :try_start_2
    iget-object v2, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 96
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getCarrierId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 97
    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    .line 98
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 99
    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    .line 100
    invoke-virtual {p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getCarrierIdFromMccMnc(Ljava/lang/String;)I

    move-result v6

    .line 102
    invoke-virtual {p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_5

    aget-object v10, v7, v9

    .line 103
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "carrier_config_carrierid_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getSpecificCarrierId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 104
    invoke-virtual {p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v6, "utf-8"

    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 105
    invoke-static {v2, v0}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object v0

    goto :goto_2

    .line 107
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "carrier_config_carrierid_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getCarrierId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 108
    invoke-virtual {p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v10, "utf-8"

    invoke-interface {v2, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 109
    invoke-static {v2, v0}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object v3

    goto :goto_1

    .line 110
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "carrier_config_carrierid_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 111
    invoke-virtual {p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v10, "utf-8"

    invoke-interface {v2, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 112
    invoke-static {v2, v0}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object v5

    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_5
    move-object v0, v4

    .line 117
    :goto_2
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    .line 119
    :cond_6
    invoke-virtual {v3}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v3

    goto :goto_3

    .line 121
    :cond_7
    invoke-virtual {v5}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v5

    goto :goto_3

    :cond_8
    move-object v0, v1

    .line 125
    :goto_3
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 127
    invoke-virtual {p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "carrier_config_mccmnc_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getMcc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/carrier/CarrierIdentifier;->getMnc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 129
    invoke-static {v2, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 93
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultCarrierConfigService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 140
    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f010001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 142
    :try_start_5
    invoke-static {v1, p1}, Lcom/android/carrierconfig/DefaultCarrierConfigService;->readConfigFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    .line 146
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultCarrierConfigService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_5
    iget-object v1, p0, Lcom/android/carrierconfig/DefaultCarrierConfigService;->mOemCarrierConfigService:Lcom/android/carrierconfig/OemCarrierConfigService;

    invoke-virtual {p0}, Landroid/service/carrier/CarrierService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lcom/android/carrierconfig/OemCarrierConfigService;->onLoadConfig(Landroid/content/Context;Landroid/service/carrier/CarrierIdentifier;)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 152
    invoke-virtual {v0, p0}, Landroid/os/PersistableBundle;->putAll(Landroid/os/PersistableBundle;)V

    return-object v0
.end method
