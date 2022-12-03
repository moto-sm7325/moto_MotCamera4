.class public final synthetic Lcom/google/mlkit/common/sdkinternal/zzj;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/mlkit/common/sdkinternal/zzj;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzj;->zza:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/zzl;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/mlkit/common/sdkinternal/zzj;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzj;->zza:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mlkit/common/sdkinternal/zzj;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzj;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget v0, p0, Lcom/google/mlkit/common/sdkinternal/zzj;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzj;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->guard:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    .line 3
    new-instance v1, Lcom/google/android/gms/tasks/zzs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tasks/zzs;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;->runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    return-void

    .line 5
    :pswitch_1
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzj;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    .line 6
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zza:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/ArrayDeque;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzj;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/assetpacks/zzl;

    .line 10
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzc:Lcom/google/android/play/core/internal/zzco;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzy;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 13
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 14
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzO()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 15
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-virtual {v1, v8}, Lcom/google/android/play/core/assetpacks/zzbh;->zzr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    new-instance v10, Ljava/io/File;

    const-string v11, "assets"

    .line 17
    invoke-direct {v10, v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_2

    sget-object v8, Lcom/google/android/play/core/assetpacks/zzbh;->zza:Lcom/google/gson/FieldAttributes;

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v10, v11, v4

    const-string v10, "Failed to find assets directory: %s"

    .line 19
    invoke-virtual {v8, v10, v11}, Lcom/google/gson/FieldAttributes;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    .line 21
    new-instance v10, Lcom/google/android/play/core/assetpacks/zzbm;

    invoke-direct {v10, v4, v8, v9}, Lcom/google/android/play/core/assetpacks/zzbm;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    :goto_2
    if-eqz v9, :cond_0

    .line 22
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    sget-object v7, Lcom/google/android/play/core/assetpacks/zzbh;->zza:Lcom/google/gson/FieldAttributes;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    const-string v4, "Could not process directory while scanning installed packs: %s"

    .line 23
    invoke-virtual {v7, v4, v5}, Lcom/google/gson/FieldAttributes;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 24
    :cond_3
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 25
    invoke-virtual {v1, v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzc(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 26
    :cond_4
    invoke-interface {v0, v2}, Lcom/google/android/play/core/assetpacks/zzy;->zzd(Ljava/util/Map;)Lcom/google/android/play/core/tasks/zzm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzi:Lcom/google/android/play/core/internal/zzco;

    .line 27
    invoke-interface {v1}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/android/play/core/appupdate/zzh;

    invoke-direct {v3, v2}, Lcom/google/android/play/core/appupdate/zzh;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;)V

    .line 28
    invoke-virtual {v0, v1, v3}, Lcom/google/android/play/core/tasks/zzm;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/zzm;

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/zzl;->zzi:Lcom/google/android/play/core/internal/zzco;

    .line 29
    invoke-interface {p0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/google/android/play/core/assetpacks/zzf;->zza:Lcom/google/android/play/core/assetpacks/zzf;

    .line 30
    iget-object v2, v0, Lcom/google/android/play/core/tasks/zzm;->zzb:Lcom/google/android/play/core/tasks/zzh;

    new-instance v3, Lcom/google/android/play/core/tasks/zzd;

    invoke-direct {v3, p0, v1}, Lcom/google/android/play/core/tasks/zzd;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/OnFailureListener;)V

    invoke-virtual {v2, v3}, Lcom/google/android/play/core/tasks/zzh;->zza(Lcom/google/android/play/core/tasks/zzg;)V

    .line 31
    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/zzm;->zzg()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
