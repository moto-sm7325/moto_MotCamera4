.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning@@17.0.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

.field public zzb:I

.field public zzc:Z

.field public zzd:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zzb:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 1
    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzc:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zza()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zzc:Z

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zzb:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zzb:I

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzb:Ljava/util/List;

    .line 4
    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zzb:I

    .line 5
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zza()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    :goto_0
    return-object p0
.end method

.method public final remove()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zzc:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 2
    sget v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->$r8$clinit:I

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzn()V

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzb:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zzb:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zzb:I

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzl(I)Ljava/lang/Object;

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zza()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "remove() was called before next()"

    .line 10
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zza()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zzd:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgv;->zzc:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zzd:Ljava/util/Iterator;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;->zzd:Ljava/util/Iterator;

    return-object p0
.end method
