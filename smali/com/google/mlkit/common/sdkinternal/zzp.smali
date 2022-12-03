.class public final synthetic Lcom/google/mlkit/common/sdkinternal/zzp;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/lang/Object;

.field public final synthetic zzb:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzbb;Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/mlkit/common/sdkinternal/zzp;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzp;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/zzp;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzek;Lcom/google/android/play/core/assetpacks/zzei;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/mlkit/common/sdkinternal/zzp;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzp;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/zzp;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/mlkit/common/sdkinternal/TaskQueue;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mlkit/common/sdkinternal/zzp;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzp;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/zzp;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/google/mlkit/common/sdkinternal/zzp;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/zzp;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzbb;

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzp;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v0, p0}, Lcom/google/android/play/core/listener/zzc;->zzi(Ljava/lang/Object;)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/zzp;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzp;->zzb:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    .line 3
    iget-object v1, v0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p0, v0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzc()V

    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    iget-object v2, v0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;->zzc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    .line 14
    :goto_2
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/zzp;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzek;

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzp;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/assetpacks/zzei;

    .line 15
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzek;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/assetpacks/zzei;->zzb:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzei;->zzc:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzB(Ljava/lang/String;IJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
