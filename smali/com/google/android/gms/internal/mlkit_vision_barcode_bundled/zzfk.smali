.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfk;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfi;

    .line 3
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public static final zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;

    .line 3
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;->zzb:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;->zzg()V

    .line 7
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfj;->putAll(Ljava/util/Map;)V

    :cond_2
    return-object p0
.end method
