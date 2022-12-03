.class public final Lcom/google/android/gms/tasks/zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/lang/Object;

.field public final zzb:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzl;Lcom/google/android/gms/tasks/zzw;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/tasks/zzk;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzk;->zzb:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzk;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/components/OptionalProvider;Lcom/google/firebase/inject/Provider;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tasks/zzk;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzk;->zza:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzk;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/tasks/zzk;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzk;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzl;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/tasks/zzl;->zzb:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzk;->zzb:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/tasks/zzl;

    .line 4
    iget-object v2, v2, Lcom/google/android/gms/tasks/zzl;->zzc:Lcom/google/android/gms/tasks/OnFailureListener;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lcom/google/android/gms/tasks/zzl;

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/tasks/zzl;->zzc:Lcom/google/android/gms/tasks/OnFailureListener;

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzk;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->getException()Ljava/lang/Exception;

    move-result-object p0

    const-string v2, "null reference"

    .line 9
    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-interface {v1, p0}, Lcom/google/android/gms/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    .line 11
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzk;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/components/OptionalProvider;

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzk;->zzb:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inject/Provider;

    sget v1, Lcom/google/firebase/components/ComponentRuntime;->$r8$clinit:I

    .line 13
    iget-object v1, v0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    sget-object v2, Lcom/google/firebase/components/OptionalProvider$$Lambda$5;->instance:Lcom/google/firebase/components/OptionalProvider$$Lambda$5;

    if-ne v1, v2, :cond_1

    .line 14
    monitor-enter v0

    .line 15
    :try_start_1
    iget-object v1, v0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    const/4 v2, 0x0

    .line 16
    iput-object v2, v0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    .line 17
    iput-object p0, v0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    .line 18
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    check-cast v1, Lcom/google/firebase/components/OptionalProvider$$Lambda$4;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception p0

    .line 20
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 21
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "provide() can be called only once."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
