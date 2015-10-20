.class Lcom/android/i18n/phonenumbers/MetadataManager;
.super Ljava/lang/Object;
.source "MetadataManager.java"


# static fields
.field private static final ALTERNATE_FORMATS_FILE_PREFIX:Ljava/lang/String; = "/com/android/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final callingCodeToAlternateFormatsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final countryCodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/i18n/phonenumbers/MetadataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    .line 51
    invoke-static {}, Lcom/android/i18n/phonenumbers/AlternateFormatsCountryCodeSet;->getCountryCodeSet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->countryCodeSet:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 58
    if-eqz p0, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getAlternateFormatsForCountry(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3
    .param p0, "countryCallingCode"    # I

    .prologue
    .line 86
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->countryCodeSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    .line 89
    :cond_0
    sget-object v1, Lcom/android/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    monitor-enter v1

    .line 90
    :try_start_0
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    invoke-static {p0}, Lcom/android/i18n/phonenumbers/MetadataManager;->loadMetadataFromFile(I)V

    .line 93
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    sget-object v0, Lcom/android/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static loadMetadataFromFile(I)V
    .locals 10
    .param p0, "countryCallingCode"    # I

    .prologue
    .line 68
    const-class v7, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/com/android/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 70
    .local v6, "source":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 72
    .local v3, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .local v4, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 74
    .local v0, "alternateFormats":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v0, v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    .line 75
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 76
    .local v5, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v7, Lcom/android/i18n/phonenumbers/MetadataManager;->callingCodeToAlternateFormatsMap:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 78
    .end local v0    # "alternateFormats":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 79
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    :goto_1
    :try_start_2
    sget-object v7, Lcom/android/i18n/phonenumbers/MetadataManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    invoke-static {v3}, Lcom/android/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    .line 83
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 81
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v0    # "alternateFormats":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "in":Ljava/io/ObjectInputStream;
    :cond_0
    invoke-static {v4}, Lcom/android/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 82
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 81
    .end local v0    # "alternateFormats":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v3}, Lcom/android/i18n/phonenumbers/MetadataManager;->close(Ljava/io/InputStream;)V

    throw v7

    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v4    # "in":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 78
    :catch_1
    move-exception v1

    goto :goto_1
.end method
