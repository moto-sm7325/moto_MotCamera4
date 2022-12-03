.class public final synthetic Lcom/google/mlkit/common/sdkinternal/zzl;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/mlkit/common/sdkinternal/ModelResource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/common/sdkinternal/ModelResource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->zza:Lcom/google/mlkit/common/sdkinternal/ModelResource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzl;->zza:Lcom/google/mlkit/common/sdkinternal/ModelResource;

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    if-nez v0, :cond_1

    .line 4
    move-object v0, p0

    check-cast v0, Lcom/google/mlkit/vision/barcode/internal/zzi;

    .line 5
    monitor-enter v0

    :try_start_0
    iget-object v3, v0, Lcom/google/mlkit/vision/barcode/internal/zzi;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzj;

    .line 6
    invoke-interface {v3}, Lcom/google/mlkit/vision/barcode/internal/zzj;->zzb()V

    sput-boolean v1, Lcom/google/mlkit/vision/barcode/internal/zzi;->zza:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 7
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/ModelResource;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0

    throw p0

    .line 10
    :cond_1
    :goto_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzja;->zza:Ljava/util/Map;

    .line 11
    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 12
    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzke;->zza:Ljava/util/Map;

    .line 13
    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
