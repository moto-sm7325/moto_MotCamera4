.class public final Lcom/google/android/play/core/tasks/zzc;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;

.field public final zzb:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzdz;Lcom/google/android/play/core/assetpacks/zzdw;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/play/core/tasks/zzc;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/tasks/zzc;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/zzc;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/tasks/zzd;Lcom/google/android/play/core/tasks/zzm;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/tasks/zzc;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/google/android/play/core/tasks/zzc;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/zzc;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/play/core/tasks/zzc;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/tasks/zzc;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/zzc;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/google/android/play/core/tasks/zzc;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzc;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzdz;

    iget-object p0, p0, Lcom/google/android/play/core/tasks/zzc;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/assetpacks/zzdw;

    .line 2
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzdz;->zza:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/LongArray;->values:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/assetpacks/zzdw;->zza:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/zzdw;->zzb:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzB(Ljava/lang/String;IJ)V

    return-void

    .line 3
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzc;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/tasks/zzd;

    .line 4
    iget-object v0, v0, Lcom/google/android/play/core/tasks/zzd;->zzb:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/zzc;->zzb:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/play/core/tasks/zzd;

    .line 6
    iget-object v2, v2, Lcom/google/android/play/core/tasks/zzd;->zzc:Lcom/google/android/play/core/tasks/OnFailureListener;

    if-eqz v2, :cond_0

    .line 7
    check-cast v1, Lcom/google/android/play/core/tasks/zzd;

    .line 8
    iget-object v1, v1, Lcom/google/android/play/core/tasks/zzd;->zzc:Lcom/google/android/play/core/tasks/OnFailureListener;

    .line 9
    iget-object p0, p0, Lcom/google/android/play/core/tasks/zzc;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/tasks/zzm;

    .line 10
    iget-object v2, p0, Lcom/google/android/play/core/tasks/zzm;->zza:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/google/android/play/core/tasks/zzm;->zze:Ljava/lang/Exception;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-interface {v1, p0}, Lcom/google/android/play/core/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 12
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 13
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zzc;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/ReferenceQueue;

    iget-object p0, p0, Lcom/google/android/play/core/tasks/zzc;->zzb:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    .line 15
    :catch_0
    :goto_2
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 16
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/common/sdkinternal/zzd;

    .line 17
    iget-object v2, v1, Lcom/google/mlkit/common/sdkinternal/zzd;->zza:Ljava/util/Set;

    .line 18
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 19
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/PhantomReference;->clear()V

    iget-object v1, v1, Lcom/google/mlkit/common/sdkinternal/zzd;->zzb:Ljava/lang/Runnable;

    .line 20
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
