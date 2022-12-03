.class public final Lcom/google/android/play/core/tasks/zza;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;

.field public final zzb:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;Landroid/app/job/JobParameters;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/play/core/tasks/zza;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/tasks/zza;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/zza;->zzb:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/tasks/zzb;Lcom/google/android/play/core/tasks/zzm;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/tasks/zza;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/google/android/play/core/tasks/zza;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/zza;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/tasks/zza;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zza;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/tasks/zzb;

    .line 2
    iget-object v0, v0, Lcom/google/android/play/core/tasks/zzb;->zzb:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/zza;->zzb:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/play/core/tasks/zzb;

    .line 4
    iget-object v2, v2, Lcom/google/android/play/core/tasks/zzb;->zzc:Lcom/google/android/play/core/internal/zzaj;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lcom/google/android/play/core/tasks/zzb;

    .line 6
    iget-object v1, v1, Lcom/google/android/play/core/tasks/zzb;->zzc:Lcom/google/android/play/core/internal/zzaj;

    .line 7
    iget-object p0, p0, Lcom/google/android/play/core/tasks/zza;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/tasks/zzm;

    .line 8
    iget-object p0, v1, Lcom/google/android/play/core/internal/zzaj;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/internal/zzas;

    iget-object v1, v1, Lcom/google/android/play/core/internal/zzaj;->zzb:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/tasks/zzi;

    .line 9
    iget-object v2, p0, Lcom/google/android/play/core/internal/zzas;->zzg:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/google/android/play/core/internal/zzas;->zzf:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 11
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/google/android/play/core/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    iget-object p0, p0, Lcom/google/android/play/core/tasks/zza;->zzb:Ljava/lang/Object;

    check-cast p0, Landroid/app/job/JobParameters;

    sget v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->$r8$clinit:I

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, p0, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
