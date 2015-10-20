.class public Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
.super Ljava/lang/Object;
.source "PhoneNumberOfflineGeocoder.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final MAPPING_DATA_DIRECTORY:Ljava/lang/String; = "/com/android/i18n/phonenumbers/geocoding/data/"

.field private static instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;


# instance fields
.field private availablePhonePrefixMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;",
            ">;"
        }
    .end annotation
.end field

.field private mappingFileProvider:Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;

.field private final phonePrefixDataDirectory:Ljava/lang/String;

.field private final phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    .line 41
    const-class v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "phonePrefixDataDirectory"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 48
    new-instance v0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mappingFileProvider:Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    .line 56
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phonePrefixDataDirectory:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->loadMappingFileProvider()V

    .line 58
    return-void
.end method

.method private canBeGeocoded(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z
    .locals 1
    .param p1, "numberType"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .prologue
    .line 255
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 103
    if-eqz p0, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAreaDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 276
    .local v0, "countryCallingCode":I
    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    move v3, v0

    .line 278
    .local v3, "phonePrefix":I
    :goto_0
    invoke-direct {p0, v3, p2, p3, p4}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;

    move-result-object v4

    .line 280
    .local v4, "phonePrefixDescriptions":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->lookup(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "description":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mayFallBackToEnglish(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 285
    const-string v5, "en"

    const-string v6, ""

    const-string v7, ""

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;

    move-result-object v1

    .line 286
    .local v1, "defaultMap":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    if-nez v1, :cond_3

    .line 287
    const-string v5, ""

    .line 291
    .end local v1    # "defaultMap":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    :goto_2
    return-object v5

    .line 276
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "phonePrefix":I
    .end local v4    # "phonePrefixDescriptions":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    :cond_1
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v5

    const-wide/32 v7, 0x989680

    div-long/2addr v5, v7

    long-to-int v5, v5

    add-int/lit16 v3, v5, 0x3e8

    goto :goto_0

    .line 280
    .restart local v3    # "phonePrefix":I
    .restart local v4    # "phonePrefixDescriptions":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 289
    .restart local v1    # "defaultMap":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    .restart local v2    # "description":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->lookup(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 291
    .end local v1    # "defaultMap":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    :cond_4
    if-eqz v2, :cond_5

    move-object v5, v2

    goto :goto_2

    :cond_5
    const-string v5, ""

    goto :goto_2
.end method

.method private getCountryNameForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "language"    # Ljava/util/Locale;

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .locals 3

    .prologue
    .line 122
    const-class v1, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    const-string v2, "/com/android/i18n/phonenumbers/geocoding/data/"

    invoke-direct {v0, v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    .line 125
    :cond_0
    sget-object v0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPhonePrefixDescriptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    .locals 2
    .param p1, "prefixMapKey"    # I
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mappingFileProvider:Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->getFileName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 78
    const/4 v1, 0x0

    .line 83
    :goto_0
    return-object v1

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->loadAreaCodeMapFromFile(Ljava/lang/String;)V

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;

    goto :goto_0
.end method

.method private getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/util/Locale;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    const-string v0, "ZZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadAreaCodeMapFromFile(Ljava/lang/String;)V
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 87
    const-class v5, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 89
    .local v4, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 91
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v3, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;

    invoke-direct {v3}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;-><init>()V

    .line 93
    .local v3, "map":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    invoke-virtual {v3, v2}, Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;->readExternal(Ljava/io/ObjectInput;)V

    .line 94
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->availablePhonePrefixMaps:Ljava/util/Map;

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 100
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .end local v3    # "map":Lcom/android/i18n/phonenumbers/geocoding/AreaCodeMap;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    sget-object v5, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    throw v5

    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 95
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private loadMappingFileProvider()V
    .locals 7

    .prologue
    .line 61
    const-class v4, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phonePrefixDataDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 63
    .local v3, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 65
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->mappingFileProvider:Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;

    invoke-virtual {v4, v2}, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 72
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    sget-object v4, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->close(Ljava/io/InputStream;)V

    throw v4

    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 67
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private mayFallBackToEnglish(Ljava/lang/String;)Z
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 299
    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ja"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ko"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 218
    .local v0, "numberType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v1, :cond_0

    .line 219
    const-string v1, ""

    .line 223
    :goto_0
    return-object v1

    .line 220
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->canBeGeocoded(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "userRegion"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 241
    .local v0, "numberType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v1, :cond_0

    .line 242
    const-string v1, ""

    .line 246
    :goto_0
    return-object v1

    .line 243
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->canBeGeocoded(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;

    .prologue
    .line 161
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "langStr":Ljava/lang/String;
    const-string v3, ""

    .line 163
    .local v3, "scriptStr":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "regionStr":Ljava/lang/String;
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getAreaDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "areaDescription":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .end local v0    # "areaDescription":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "areaDescription":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "userRegion"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 202
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
