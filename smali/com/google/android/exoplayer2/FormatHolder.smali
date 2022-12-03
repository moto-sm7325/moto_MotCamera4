.class public final Lcom/google/android/exoplayer2/FormatHolder;
.super Ljava/lang/Object;
.source "FormatHolder.java"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/zzdd;


# instance fields
.field public drmSession:Ljava/lang/Object;

.field public format:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzde;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/FormatHolder;->format:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/FormatHolder;->format:Ljava/lang/Object;

    return-void
.end method

.method public zza()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/FormatHolder;->drmSession:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzde;

    iget-object p0, p0, Lcom/google/android/exoplayer2/FormatHolder;->format:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzde;->zzf:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/zzdb;

    .line 3
    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v3, v3, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    .line 4
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/zzdb;

    if-nez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_1

    .line 6
    :cond_1
    iget v4, v4, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    .line 7
    :goto_1
    iget v5, v2, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    if-ge v4, v5, :cond_0

    .line 8
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method
