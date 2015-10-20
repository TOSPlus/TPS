.class public Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;
.super Ljava/lang/Object;
.source "MappingFileProvider.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final LOCALE_NORMALIZATION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private availableLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private countryCallingCodes:[I

.field private numOfEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v0, "normalizationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "zh_TW"

    const-string v2, "zh_Hant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "zh_HK"

    const-string v2, "zh_Hant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "zh_MO"

    const-string v2, "zh_Hant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->LOCALE_NORMALIZATION_MAP:Ljava/util/Map;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->numOfEntries:I

    .line 63
    return-void
.end method

.method private appendSubsequentLocalePart(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "subsequentLocalePart"    # Ljava/lang/String;
    .param p2, "fullLocale"    # Ljava/lang/StringBuilder;

    .prologue
    .line 225
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 226
    const/16 v0, 0x5f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_0
    return-void
.end method

.method private constructFullLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "fullLocale":Ljava/lang/StringBuilder;
    invoke-direct {p0, p2, v0}, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->appendSubsequentLocalePart(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 220
    invoke-direct {p0, p3, v0}, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->appendSubsequentLocalePart(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 221
    return-object v0
.end method

.method private findBestMatchingLanguageCode(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v8, 0x5f

    .line 176
    invoke-direct {p0, p2, p3, p4}, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->constructFullLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    .local v0, "fullLocale":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "fullLocaleStr":Ljava/lang/String;
    sget-object v7, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->LOCALE_NORMALIZATION_MAP:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 179
    .local v6, "normalizedLocale":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 180
    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object p2, v6

    .line 209
    .end local p2    # "language":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 184
    .restart local p2    # "language":Ljava/lang/String;
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object p2, v1

    .line 185
    goto :goto_0

    .line 188
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->onlyOneOfScriptOrRegionIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 189
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 209
    :cond_3
    const-string p2, ""

    goto :goto_0

    .line 192
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 194
    .local v4, "langWithScript":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "langWithScriptStr":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object p2, v5

    .line 196
    goto :goto_0

    .line 199
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 200
    .local v2, "langWithRegion":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "langWithRegionStr":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object p2, v3

    .line 202
    goto :goto_0

    .line 205
    :cond_6
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0
.end method

.method private onlyOneOfScriptOrRegionIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getFileName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "countryCallingCode"    # I
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 156
    const-string v4, ""

    .line 171
    :goto_0
    return-object v4

    .line 158
    :cond_0
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->countryCallingCodes:[I

    invoke-static {v4, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    .line 159
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 160
    const-string v4, ""

    goto :goto_0

    .line 162
    :cond_1
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->availableLanguages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 163
    .local v3, "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 164
    invoke-direct {p0, v3, p2, p3, p4}, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->findBestMatchingLanguageCode(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "languageCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v0, "fileName":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 171
    .end local v0    # "fileName":Ljava/lang/StringBuilder;
    .end local v2    # "languageCode":Ljava/lang/String;
    :cond_2
    const-string v4, ""

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    iput v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->numOfEntries:I

    .line 88
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->countryCallingCodes:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->countryCallingCodes:[I

    array-length v4, v4

    iget v5, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->numOfEntries:I

    if-ge v4, v5, :cond_1

    .line 89
    :cond_0
    iget v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->numOfEntries:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->countryCallingCodes:[I

    .line 91
    :cond_1
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->availableLanguages:Ljava/util/List;

    if-nez v4, :cond_2

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->availableLanguages:Ljava/util/List;

    .line 94
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->numOfEntries:I

    if-ge v0, v4, :cond_4

    .line 95
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->countryCallingCodes:[I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    aput v5, v4, v0

    .line 96
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 97
    .local v2, "numOfLangs":I
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 98
    .local v3, "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 99
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    :cond_3
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->availableLanguages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "j":I
    .end local v2    # "numOfLangs":I
    .end local v3    # "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public readFileConfigs(Ljava/util/SortedMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "availableDataFiles":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v4

    iput v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->numOfEntries:I

    .line 74
    iget v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->numOfEntries:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->countryCallingCodes:[I

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->numOfEntries:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->availableLanguages:Ljava/util/List;

    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "index":I
    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 78
    .local v0, "countryCallingCode":I
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->countryCallingCodes:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    aput v0, v4, v2

    .line 79
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->availableLanguages:Ljava/util/List;

    new-instance v6, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 81
    .end local v0    # "countryCallingCode":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v3, "output":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->numOfEntries:I

    if-ge v0, v5, :cond_1

    .line 130
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->countryCallingCodes:[I

    aget v5, v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const/16 v5, 0x7c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    new-instance v4, Ljava/util/TreeSet;

    iget-object v5, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->availableLanguages:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 133
    .local v4, "sortedSetOfLangs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    .local v2, "lang":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 137
    .end local v2    # "lang":Ljava/lang/String;
    :cond_0
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "sortedSetOfLangs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget v5, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->numOfEntries:I

    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->numOfEntries:I

    if-ge v0, v5, :cond_1

    .line 111
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->countryCallingCodes:[I

    aget v5, v5, v0

    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 112
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/geocoding/MappingFileProvider;->availableLanguages:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 113
    .local v4, "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v3

    .line 114
    .local v3, "numOfLangs":I
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 115
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    .local v2, "lang":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    .end local v2    # "lang":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "numOfLangs":I
    .end local v4    # "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
