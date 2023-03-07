.class public final Lcom/google/android/play/core/assetpacks/zzbn;
.super Lcom/google/android/play/core/assetpacks/AssetPackState;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:J

.field public final zze:J

.field public final zzf:I

.field public final zzg:I

.field public final zzh:Ljava/lang/String;

.field public final zzi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJJIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/AssetPackState;-><init>()V

    const-string v0, "Null name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzb:I

    iput p3, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzc:I

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzd:J

    iput-wide p6, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zze:J

    iput p8, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzf:I

    iput p9, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzg:I

    const-string p1, "Null availableVersionTag"

    .line 2
    invoke-static {p10, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p10, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzh:Ljava/lang/String;

    const-string p1, "Null installedVersionTag"

    .line 3
    invoke-static {p11, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p11, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bytesDownloaded()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzd:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/play/core/assetpacks/AssetPackState;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/play/core/assetpacks/AssetPackState;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zza:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzb:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->status()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzc:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->errorCode()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzd:J

    .line 6
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->bytesDownloaded()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zze:J

    .line 7
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->totalBytesToDownload()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzf:I

    .line 8
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->transferProgressPercentage()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzg:I

    .line 9
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->zza()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzh:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzi:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final errorCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzc:I

    return p0
.end method

.method public final hashCode()I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzb:I

    iget v2, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzc:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzd:J

    iget-wide v5, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zze:J

    const v7, 0xf4243

    xor-int/2addr v0, v7

    mul-int/2addr v0, v7

    xor-int/2addr v0, v1

    mul-int/2addr v0, v7

    xor-int/2addr v0, v2

    mul-int/2addr v0, v7

    const/16 v1, 0x20

    ushr-long v8, v3, v1

    xor-long v2, v8, v3

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v7

    ushr-long v1, v5, v1

    xor-long/2addr v1, v5

    long-to-int v1, v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v7

    iget v1, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzf:I

    xor-int/2addr v0, v1

    mul-int/2addr v0, v7

    iget v1, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzg:I

    xor-int/2addr v0, v1

    mul-int/2addr v0, v7

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzh:Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v7

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzi:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final status()I
    .locals 0

    iget p0, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzb:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zza:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzb:I

    iget v2, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzc:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzd:J

    iget-wide v5, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zze:J

    iget v7, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzf:I

    iget v8, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzg:I

    iget-object v9, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzh:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    add-int/lit16 v10, v10, 0x105

    add-int/2addr v10, v11

    add-int/2addr v10, v12

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "AssetPackState{name="

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errorCode="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bytesDownloaded="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", totalBytesToDownload="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", transferProgressPercentage="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", updateAvailability="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", availableVersionTag="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", installedVersionTag="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final totalBytesToDownload()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zze:J

    return-wide v0
.end method

.method public final transferProgressPercentage()I
    .locals 0

    iget p0, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzf:I

    return p0
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzg:I

    return p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzbn;->zzi:Ljava/lang/String;

    return-object p0
.end method
