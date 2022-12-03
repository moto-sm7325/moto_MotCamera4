.class public final Lcom/google/android/gms/tasks/zzi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;

.field public final zzb:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzj;Lcom/google/android/gms/tasks/zzw;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/tasks/zzi;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzi;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tasks/zzi;->$r8$classId:I

    const-string v0, "lock"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzi;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/tasks/zzi;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzj;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/tasks/zzj;->zzb:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/tasks/zzj;

    .line 4
    iget-object v2, v2, Lcom/google/android/gms/tasks/zzj;->zzc:Lcom/google/android/gms/tasks/OnCompleteListener;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lcom/google/android/gms/tasks/zzj;

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/tasks/zzj;->zzc:Lcom/google/android/gms/tasks/OnCompleteListener;

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzi;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    .line 8
    invoke-interface {v1, p0}, Lcom/google/android/gms/tasks/OnCompleteListener;->onComplete(Lcom/google/android/gms/tasks/zzw;)V

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzi;->zza:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_1
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzi;->zzb:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
