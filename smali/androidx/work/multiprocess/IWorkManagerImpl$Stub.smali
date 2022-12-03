.class public abstract Landroidx/work/multiprocess/IWorkManagerImpl$Stub;
.super Landroid/os/Binder;
.source "IWorkManagerImpl.java"

# interfaces
.implements Landroidx/work/multiprocess/IWorkManagerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/IWorkManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidx.work.multiprocess.IWorkManagerImpl"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "androidx.work.multiprocess.IWorkManagerImpl"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 5
    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    .line 6
    :try_start_0
    sget-object p3, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    invoke-static {p1, p3}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;

    .line 8
    iget-object p3, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p3, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 10
    iget-object p4, p3, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 11
    move-object v0, p4

    check-cast v0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 12
    iget-object v0, v0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutor;

    .line 13
    iget-object p3, p3, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 14
    new-instance v2, Landroidx/work/impl/utils/WorkProgressUpdater;

    invoke-direct {v2, p3, p4}, Landroidx/work/impl/utils/WorkProgressUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 15
    iget-object p3, p1, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;->mId:Ljava/lang/String;

    .line 16
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p3

    .line 17
    iget-object p1, p1, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;->mParcelableData:Landroidx/work/multiprocess/parcelable/ParcelableData;

    .line 18
    iget-object p1, p1, Landroidx/work/multiprocess/parcelable/ParcelableData;->mData:Landroidx/work/Data;

    .line 19
    new-instance v3, Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {v3}, Landroidx/work/impl/utils/futures/SettableFuture;-><init>()V

    .line 20
    new-instance v4, Landroidx/work/impl/utils/WorkProgressUpdater$1;

    invoke-direct {v4, v2, p3, p1, v3}, Landroidx/work/impl/utils/WorkProgressUpdater$1;-><init>(Landroidx/work/impl/utils/WorkProgressUpdater;Ljava/util/UUID;Landroidx/work/Data;Landroidx/work/impl/utils/futures/SettableFuture;)V

    check-cast p4, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 21
    iget-object p1, p4, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutor;

    invoke-virtual {p1, v4}, Landroidx/work/impl/utils/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 22
    new-instance p1, Landroidx/work/multiprocess/RemoteWorkManagerImpl$8;

    invoke-direct {p1, p0, v0, p2, v3}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$8;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 23
    invoke-virtual {p1}, Landroidx/work/multiprocess/ListenableCallback;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 24
    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_0
    return v1

    .line 25
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 28
    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    .line 29
    :try_start_1
    sget-object p3, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    invoke-static {p1, p3}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;

    .line 31
    iget-object p3, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 32
    iget-object p4, p3, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 33
    check-cast p4, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 34
    iget-object p4, p4, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutor;

    .line 35
    iget-object p1, p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->mWorkQuery:Landroidx/work/WorkQuery;

    .line 36
    new-instance v0, Landroidx/work/impl/utils/StatusRunnable$5;

    invoke-direct {v0, p3, p1}, Landroidx/work/impl/utils/StatusRunnable$5;-><init>(Landroidx/work/impl/WorkManagerImpl;Landroidx/work/WorkQuery;)V

    .line 37
    iget-object p1, p3, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    check-cast p1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 38
    iget-object p1, p1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutor;

    .line 39
    invoke-virtual {p1, v0}, Landroidx/work/impl/utils/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 40
    iget-object p1, v0, Landroidx/work/impl/utils/StatusRunnable;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 41
    new-instance p3, Landroidx/work/multiprocess/RemoteWorkManagerImpl$7;

    invoke-direct {p3, p0, p4, p2, p1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$7;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 42
    invoke-virtual {p3}, Landroidx/work/multiprocess/ListenableCallback;->dispatchCallbackSafely()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 43
    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_1
    return v1

    .line 44
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p1

    .line 46
    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    .line 47
    :try_start_2
    iget-object p2, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance p3, Landroidx/work/impl/utils/CancelWorkRunnable$4;

    invoke-direct {p3, p2}, Landroidx/work/impl/utils/CancelWorkRunnable$4;-><init>(Landroidx/work/impl/WorkManagerImpl;)V

    .line 49
    iget-object p2, p2, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    check-cast p2, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 50
    iget-object p2, p2, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutor;

    invoke-virtual {p2, p3}, Landroidx/work/impl/utils/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 51
    iget-object p2, p3, Landroidx/work/impl/utils/CancelWorkRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    .line 52
    iget-object p3, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 53
    iget-object p3, p3, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 54
    check-cast p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 55
    iget-object p3, p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutor;

    .line 56
    new-instance p4, Landroidx/work/multiprocess/RemoteWorkManagerImpl$6;

    .line 57
    iget-object p2, p2, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 58
    invoke-direct {p4, p0, p3, p1, p2}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$6;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 59
    invoke-virtual {p4}, Landroidx/work/multiprocess/ListenableCallback;->dispatchCallbackSafely()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 60
    invoke-static {p1, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_2
    return v1

    .line 61
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 64
    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->cancelUniqueWork(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return v1

    .line 65
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 68
    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    .line 69
    :try_start_3
    iget-object p3, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance p4, Landroidx/work/impl/utils/CancelWorkRunnable$2;

    invoke-direct {p4, p3, p1}, Landroidx/work/impl/utils/CancelWorkRunnable$2;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 71
    iget-object p1, p3, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    check-cast p1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 72
    iget-object p1, p1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutor;

    invoke-virtual {p1, p4}, Landroidx/work/impl/utils/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 73
    iget-object p1, p4, Landroidx/work/impl/utils/CancelWorkRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    .line 74
    iget-object p3, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 75
    iget-object p3, p3, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 76
    check-cast p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 77
    iget-object p3, p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutor;

    .line 78
    new-instance p4, Landroidx/work/multiprocess/RemoteWorkManagerImpl$4;

    .line 79
    iget-object p1, p1, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 80
    invoke-direct {p4, p0, p3, p2, p1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$4;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 81
    invoke-virtual {p4}, Landroidx/work/multiprocess/ListenableCallback;->dispatchCallbackSafely()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    .line 82
    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_3
    return v1

    .line 83
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 86
    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    .line 87
    :try_start_4
    iget-object p3, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance p4, Landroidx/work/impl/utils/CancelWorkRunnable$1;

    invoke-direct {p4, p3, p1}, Landroidx/work/impl/utils/CancelWorkRunnable$1;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/util/UUID;)V

    .line 89
    iget-object p1, p3, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    check-cast p1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 90
    iget-object p1, p1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutor;

    invoke-virtual {p1, p4}, Landroidx/work/impl/utils/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 91
    iget-object p1, p4, Landroidx/work/impl/utils/CancelWorkRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    .line 92
    iget-object p3, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 93
    iget-object p3, p3, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 94
    check-cast p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 95
    iget-object p3, p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutor;

    .line 96
    new-instance p4, Landroidx/work/multiprocess/RemoteWorkManagerImpl$3;

    .line 97
    iget-object p1, p1, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 98
    invoke-direct {p4, p0, p3, p2, p1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$3;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 99
    invoke-virtual {p4}, Landroidx/work/multiprocess/ListenableCallback;->dispatchCallbackSafely()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p0

    .line 100
    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_4
    return v1

    .line 101
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 104
    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->enqueueContinuation([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return v1

    .line 105
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 108
    check-cast p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    .line 109
    :try_start_5
    sget-object p3, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 110
    invoke-static {p1, p3}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;

    .line 111
    iget-object p1, p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;->mRequests:Ljava/util/List;

    .line 112
    iget-object p3, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {p3, p1}, Landroidx/work/impl/WorkManagerImpl;->enqueue(Ljava/util/List;)Landroidx/work/Operation;

    move-result-object p1

    .line 113
    iget-object p3, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 114
    iget-object p3, p3, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 115
    check-cast p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 116
    iget-object p3, p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/work/impl/utils/SerialExecutor;

    .line 117
    new-instance p4, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;

    .line 118
    check-cast p1, Landroidx/work/impl/OperationImpl;

    .line 119
    iget-object p1, p1, Landroidx/work/impl/OperationImpl;->mOperationFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 120
    invoke-direct {p4, p0, p3, p2, p1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;-><init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 121
    invoke-virtual {p4}, Landroidx/work/multiprocess/ListenableCallback;->dispatchCallbackSafely()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p0

    .line 122
    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_5
    return v1

    .line 123
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
