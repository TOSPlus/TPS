.class public Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/Phonemetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneMetadataCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private metadata_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    .line 912
    return-void
.end method

.method public static newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;
    .locals 1

    .prologue
    .line 925
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addMetadata(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .locals 1
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .prologue
    .line 937
    if-nez p1, :cond_0

    .line 938
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    return-object p0
.end method

.method public clear()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 963
    return-object p0
.end method

.method public getMetadataCount()I
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMetadataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 953
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 954
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 955
    new-instance v1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;-><init>()V

    .line 956
    .local v1, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->readExternal(Ljava/io/ObjectInput;)V

    .line 957
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 959
    .end local v1    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataCount()I

    move-result v1

    .line 946
    .local v1, "size":I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 947
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 948
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v2, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 947
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 950
    :cond_0
    return-void
.end method
