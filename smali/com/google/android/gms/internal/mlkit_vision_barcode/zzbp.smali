.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;
.super Ljava/util/AbstractSet;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.1"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbj;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbj;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzj()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzd:Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->zzd:Ljava/lang/Object;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbp;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbs;->size()I

    move-result p0

    return p0
.end method
