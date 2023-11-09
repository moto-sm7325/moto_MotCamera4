.class public final Lcom/google/android/play/core/appupdate/zzo;
.super Lcom/google/android/play/core/appupdate/zzn;
.source "com.google.android.play:core@@1.10.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/play/core/appupdate/zzn<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/tasks/zzi;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/zzi<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "OnCompleteUpdateCallback"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/play/core/appupdate/zzn;-><init>(Lcom/google/android/play/core/appupdate/zzq;Lcom/google/android/play/core/internal/zzag;Lcom/google/android/play/core/tasks/zzi;)V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzn;->zzc:Lcom/google/android/play/core/appupdate/zzq;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/zzq;->zza:Lcom/google/android/play/core/internal/zzas;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzn;->zzb:Lcom/google/android/play/core/tasks/zzi;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/internal/zzas;->zzs(Lcom/google/android/play/core/tasks/zzi;)V

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzn;->zza:Lcom/google/android/play/core/internal/zzag;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onCompleteUpdate"

    .line 2
    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "error.code"

    const/4 v2, -0x2

    .line 3
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzn;->zzb:Lcom/google/android/play/core/tasks/zzi;

    new-instance v3, Lcom/google/android/play/core/install/InstallException;

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 6
    invoke-direct {v3, p1, v1}, Lcom/google/android/play/core/install/InstallException;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/google/android/play/core/tasks/zzi;->zzd(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzn;->zzb:Lcom/google/android/play/core/tasks/zzi;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/play/core/tasks/zzi;->zze(Ljava/lang/Object;)Z

    return-void
.end method
